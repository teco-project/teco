//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Trtc {
    /// 结束云端混流
    ///
    /// 接口说明：结束云端混流
    @inlinable
    public func stopMCUMixTranscode(_ input: StopMCUMixTranscodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopMCUMixTranscodeResponse > {
        self.client.execute(action: "StopMCUMixTranscode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 结束云端混流
    ///
    /// 接口说明：结束云端混流
    @inlinable
    public func stopMCUMixTranscode(_ input: StopMCUMixTranscodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMCUMixTranscodeResponse {
        try await self.client.execute(action: "StopMCUMixTranscode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// StopMCUMixTranscode请求参数结构体
    public struct StopMCUMixTranscodeRequest: TCRequestModel {
        /// TRTC的SDKAppId。
        public let sdkAppId: UInt64
        
        /// 房间号。
        public let roomId: UInt64
        
        public init (sdkAppId: UInt64, roomId: UInt64) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
        }
    }
    
    /// StopMCUMixTranscode返回参数结构体
    public struct StopMCUMixTranscodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}