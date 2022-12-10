//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Trtc {
    /// 结束云端混流（字符串房间号）
    ///
    /// 接口说明：结束云端混流
    @inlinable
    public func stopMCUMixTranscodeByStrRoomId(_ input: StopMCUMixTranscodeByStrRoomIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopMCUMixTranscodeByStrRoomIdResponse > {
        self.client.execute(action: "StopMCUMixTranscodeByStrRoomId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 结束云端混流（字符串房间号）
    ///
    /// 接口说明：结束云端混流
    @inlinable
    public func stopMCUMixTranscodeByStrRoomId(_ input: StopMCUMixTranscodeByStrRoomIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMCUMixTranscodeByStrRoomIdResponse {
        try await self.client.execute(action: "StopMCUMixTranscodeByStrRoomId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StopMCUMixTranscodeByStrRoomId请求参数结构体
    public struct StopMCUMixTranscodeByStrRoomIdRequest: TCRequestModel {
        /// TRTC的SDKAppId。
        public let sdkAppId: UInt64
        
        /// 字符串房间号。
        public let strRoomId: String
        
        public init (sdkAppId: UInt64, strRoomId: String) {
            self.sdkAppId = sdkAppId
            self.strRoomId = strRoomId
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case strRoomId = "StrRoomId"
        }
    }
    
    /// StopMCUMixTranscodeByStrRoomId返回参数结构体
    public struct StopMCUMixTranscodeByStrRoomIdResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
