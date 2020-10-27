package jsptest;

import java.awt.GridLayout;

import javax.swing.JButton;
import javax.swing.JFrame;

class MyFrame3 extends JFrame {
	public MyFrame3() {
		setTitle("GridLayoutTest");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLayout(new GridLayout(0, 3)); // 3개의 열과 필요한 만큼의 행

		add(new JButton("Button1"));
		add(new JButton("Button2"));
		add(new JButton("Button3"));
		add(new JButton("B4"));
		add(new JButton("Long Button5"));
		add(new JButton("Button6"));
		pack();
		setVisible(true);
	}
}

public class GridTest {
	public static void main(String[] args) {
		MyFrame3 f = new MyFrame3();
	}
}
