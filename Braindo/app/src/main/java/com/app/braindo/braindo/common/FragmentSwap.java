package com.app.braindo.braindo.common;
import com.app.braindo.braindo.R;

import static com.app.braindo.braindo.controller.activities.LauncherActivity.itemPositionStacks;

/**
 * Created by LuisAlejandro on 09-10-2018.
 */

public class FragmentSwap {
    public static void changeFragment(int idcontent, android.app.FragmentManager _fragmentManager, android.app.Fragment newFragment, int id, String tag){
        android.app.FragmentManager fragmentManager = _fragmentManager;

        fragmentManager.beginTransaction()
                .setCustomAnimations(R.animator.slide_in_up, R.animator.slide_out_up, R.animator.slide_out_down, R.animator.slide_in_down)
                .replace(idcontent
                        , newFragment)
                .addToBackStack(tag)
                .commit();
        itemPositionStacks.add(id);
    }
    public static void changeFragmentNoAnimation(int idcontent, android.app.FragmentManager _fragmentManager, android.app.Fragment newFragment, int id, String tag){
        android.app.FragmentManager fragmentManager = _fragmentManager;

        fragmentManager.beginTransaction()
                .replace(idcontent, newFragment)
                .addToBackStack(tag)
                .commit();
        itemPositionStacks.add(id);
    }
}
