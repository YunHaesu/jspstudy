package jsptest;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.Border;

class MyFrame5 extends JFrame {
	JButton b1;
	private JButton b2, b3;

	public MyFrame5() {
		// TODO Auto-generated constructor stub
		setTitle("Absolute Position TEst");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setSize(300, 200);
		JPanel p = new JPanel();
		p.setLayout(null);

		b1 = new JButton("Button #1");
		p.add(b1);
		b2 = new JButton("Button #2");
		p.add(b2);
		b3 = new JButton("Button #3");
		p.add(b3);
		b1.setBounds(20, 5, 95, 30);
		b2.setBounds(55, 45, 105, 70); // 버튼들의 절대 위치와 크기를 지정한다.
		b3.setBounds(180, 15, 105, 90);
		add(p);
		setVisible(true);
		Border border = BorderFactory.createTitledBorder("크기");
		p.setBorder(border);

	}
}

public class AbsoluteTest {

	public static void main(String[] args) {
		MyFrame5 f = new MyFrame5();
	}

}
