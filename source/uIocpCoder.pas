unit uIocpCoder;

interface

uses
  uBuffer;

type

  TIOCPDecoder = class(TObject)
  public
    /// <summary>
    ///   解码收到的数据,如果有接收到数据,调用该方法,进行解码
    /// </summary>
    /// <returns>
    ///   返回解码好的对象
    /// </returns>
    /// <param name="inBuf"> 接收到的流数据 </param>
    function Decode(const inBuf: TBufferLink; pvContext: TObject): TObject;
        virtual; abstract;
  end;

  TIOCPDecoderClass = class of TIOCPDecoder;

  TIOCPEncoder = class(TObject)
  public
    /// <summary>
    ///   编码要发送的对象
    /// </summary>
    /// <param name="pvDataObject"> 要进行编码的对象 </param>
    /// <param name="ouBuf"> 编码好的数据 </param>
    procedure Encode(pvDataObject: TObject; const ouBuf: TBufferLink); virtual;
        abstract;
  end;

  TIOCPEncoderClass = class of TIOCPEncoder;

implementation

end.
