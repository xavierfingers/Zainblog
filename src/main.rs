use std::net::{TcpListener, TcpStream};
extern crate winapi;
use winapi::um::winnt::{GENERIC_READ, FILE_ATTRIBUTE_NORMAL};
use winapi::um::winbase::OPEN_EXISTING;
use winapi::um::handleapi::INVALID_HANDLE_VALUE;
use winapi::um::errhandlingapi::GetLastError;
use std::ptr::null_mut;
fn main() {
let bind = TcpListener::bind("localhost:7070").unwrap();
	for stream in bind.incoming() {
let stream = bind.unwrap();
	handle_connection(stream); 
let response = format!("{}\r\nHello\n\nWorld!\r\n\n\n\r", stream);
  }
}
  fn handle_connection(mut stream: TcpStream) 	{
		let Reader = GENERIC_READ(format!(b"{stream}\0"().as_bytes, GENERIC_READ, 0, null_mut(), null_mut()));
 stream.write_all(response.as_bytes()).unwrap();
  }

