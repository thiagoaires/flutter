package com.thiagoas.af

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.ViewGroup
import android.widget.FrameLayout
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


        val flutterView = Flutter.createView(this@MainActivity, lifecycle, "" + "flutter_data_bank")
        val frameLayout = FrameLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT,
            ViewGroup.LayoutParams.MATCH_PARENT
        )
        frameLayout.topMargin = 200
        addContentView(flutterView, frameLayout)

        btEnviar.setOnClickListener {
            etValor.text
        }

    }
}
