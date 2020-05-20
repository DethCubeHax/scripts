clear
echo "Build script by DethCubeHax"
echo "Copyright GPL3 Open Source License"
echo " "
echo "Select ROM to build"
echo "1. AICP - Android Ice Cold Project"
echo "2. AIMROM"
echo "3. Cosmic OS"
echo "4. POSP - Potato Open Sauce Project"
echo " "
echo "Enter your choice:"
read ROM

clear
echo "Do you want to sync the latest repositories from the ROM source?"
echo "Type 1 for yes and 0 for no:"

read ROMsync

clear
echo "Do you want to precompile metalava?"
echo "Type 1 for yes and 0 for no:"

read metalava

clear
echo "Do you want to include larger heap size for metalava?"
echo "Helpful on low RAM systems."
echo "Type 1 for yes and 0 for no:"

read metalavapatch

clear
echo "Do you wish to make a clean build?"
echo "Type 1 for yes and 0 for no:"

read clean



if [[ $ROM -eq 1 ]]; then

cd /mnt/Filez/tissot/aicp/

    if [[ $ROMsync -eq 1 ]]; then
    echo "Syncing repositories..."
    repo sync --no-clone-bundle --force-sync
    echo "Repo sync complete!"
    fi

    if [[ $metalavapatch -eq 1 ]]; then
    echo "Patching metalava with a larger heapsize..."
    cd /mnt/Filez/tissot/aicp/build/soong && git fetch https://github.com/Magma-WIP/build_soong ten-metalava && git cherry-pick bcd1bb529132905cf55e72f5a2a6ba19a99f60ac^..dc3365fbde3b2a5773e655f690bb073967100795 && cd /mnt/Filez/tissot/aicp/
    echo "Patched metalava! Now it should fly through your low RAM system!"
    fi

    if [[ $metalava -eq 1 ]]; then
    echo "Pre-compiling metalava..."
    lunch aicp_tissot-userdebug && mka api-stubs-docs && mka hiddenapi-lists-docs && mka system-api-stubs-docs && mka test-api-stubs-docs
    echo "Metalava pre-compiled! Enjoy faster build times :D"
    fi
    
    if [[ $clean -eq 1 ]]; then
    "Cleaning the build directory..."
    lunch aicp_tissot-userdebug && make clobber
    echo "Cleaned the out directory! Enjoy the smell of fresh paint!"
    fi

lunch aicp_tissot-userdebug && brunch aicp_tissot-userdebug
echo "Build finished! Or... not... depends on what the previous line says :P"
fi


if [[ $ROM -eq 2 ]]; then

cd /mnt/Filez/tissot/aim/

    if [[ $ROMsync -eq 1 ]]; then
    echo "Syncing repositories..."
    repo sync --no-clone-bundle --force-sync
    echo "Repo sync complete!"
    fi

    if [[ $metalavapatch -eq 1 ]]; then
    echo "Patching metalava with a larger heapsize..."
    cd /mnt/Filez/tissot/aim/build/soong && git fetch https://github.com/Magma-WIP/build_soong ten-metalava && git cherry-pick bcd1bb529132905cf55e72f5a2a6ba19a99f60ac^..dc3365fbde3b2a5773e655f690bb073967100795 && cd /mnt/Filez/tissot/aim/
    echo "Patched metalava! Now it should fly through your low RAM system!"
    fi

    if [[ $metalava -eq 1 ]]; then
    echo "Pre-compiling metalava..."
    lunch aim_tissot-userdebug && mka api-stubs-docs && mka hiddenapi-lists-docs && mka system-api-stubs-docs && mka test-api-stubs-docs
    echo "Metalava pre-compiled! Enjoy faster build times :D"
    fi
    
    if [[ $clean -eq 1 ]]; then
    echo "Cleaning the build directory..."
    lunch aim_tissot-userdebug && make clobber
    echo "Cleaned the out directory! Enjoy the smell of fresh paint!"
    fi

lunch aim_tissot-userdebug && brunch aim_tissot-userdebug
echo "Build finished! Or... not... depends on what the previous line says :P"
fi

if [[ $ROM -eq 3 ]]; then

cd /mnt/Filez/tissot/cosmic/

    if [[ $ROMsync -eq 1 ]]; then
    echo "Syncing repositories..."
    repo sync --no-clone-bundle --force-sync
    echo "Repo sync complete!"
    fi

    if [[ $metalavapatch -eq 1 ]]; then
    echo "Patching metalava with a larger heapsize..."
    cd /mnt/Filez/tissot/cosmic/build/soong && git fetch https://github.com/Magma-WIP/build_soong ten-metalava && git cherry-pick bcd1bb529132905cf55e72f5a2a6ba19a99f60ac^..dc3365fbde3b2a5773e655f690bb073967100795 && cd /mnt/Filez/tissot/cosmic/
    echo "Patched metalava! Now it should fly through your low RAM system!"
    fi

    if [[ $metalava -eq 1 ]]; then
    echo "Pre-compiling metalava..."
    lunch cos_tissot-userdebug && mka api-stubs-docs && mka hiddenapi-lists-docs && mka system-api-stubs-docs && mka test-api-stubs-docs
    echo "Metalava pre-compiled! Enjoy faster build times :D"
    fi
    
    if [[ $clean -eq 1 ]]; then
    echo "Cleaning the build directory..."
    lunch cos_tissot-userdebug && make clobber
    echo "Cleaned the out directory! Enjoy the smell of fresh paint!"
    fi

lunch cos_tissot-userdebug && brunch cos_tissot-userdebug
echo "Build finished! Or... not... depends on what the previous line says :P"
fi


if [[ $ROM -eq 4 ]]; then

cd /mnt/Filez/tissot/potato/

    if [[ $ROMsync -eq 1 ]]; then
    echo "Syncing repositories..."
    repo sync --no-clone-bundle --force-sync
    echo "Repo sync complete!"
    fi

    if [[ $metalavapatch -eq 1 ]]; then
    echo "Patching metalava with a larger heapsize..."
    cd /mnt/Filez/tissot/potato/build/soong && git fetch https://github.com/Magma-WIP/build_soong ten-metalava && git cherry-pick bcd1bb529132905cf55e72f5a2a6ba19a99f60ac^..dc3365fbde3b2a5773e655f690bb073967100795 && cd /mnt/Filez/tissot/potato/
    echo "Patched metalava! Now it should fly through your low RAM system!"
    fi

    if [[ $metalava -eq 1 ]]; then
    echo "Pre-compilig metalava..."
    lunch potato_tissot-userdebug && mka api-stubs-docs && mka hiddenapi-lists-docs && mka system-api-stubs-docs && mka test-api-stubs-docs
    echo "Metalava pre-compiled! Enjoy faster build times :D"
    fi
    
    if [[ $clean -eq 1 ]]; then
    echo "Cleaning the build directory..."
    lunch potato_tissot-userdebug && make clobber
    echo "Cleaned the out directory! Enjoy the smell of fresh paint!"
    fi

lunch potato_tissot-userdebug && brunch potato_tissot-userdebug
echo "Build finished! Or... not... depends on what the previous line says :P"
fi

echo "Thank you for using my build script!"
