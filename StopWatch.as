﻿package  {	import flash.display.MovieClip;	import flash.events.MouseEvent;	import flash.utils.Timer;	import flash.events.TimerEvent;		public class StopWatch extends MovieClip{				private var timer:Timer;		public function StopWatch() {			btnStart.addEventListener(MouseEvent.CLICK, startTimer);			btnStop.addEventListener(MouseEvent.CLICK, stopTimer);			btnReset.addEventListener(MouseEvent.CLICK, resetTimer);			timer = new Timer(1000);		}				private function startTimer(event:MouseEvent):void		{			timer.start();			timer.addEventListener(TimerEvent.TIMER, activateTimer);		}				private function stopTimer(event:MouseEvent):void		{			timer.stop();			timer.addEventListener(TimerEvent.TIMER, activateTimer);		}				private function resetTimer(event:MouseEvent):void		{			timer.reset();			txtTimer.text = "";			secondHand.rotation += 0;			minuteHand.rotation += 0;			hourHand.rotation += 0;		}				private function activateTimer(event:TimerEvent):void		{			secondHand.rotation += 6;			minuteHand.rotation += 0.1;			hourHand.rotation += 0.016;			txtTimer.text = event.target.currentCount;		}	}	}