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

extension Iotvideo {
    /// 获取视频防盗链播放URL
    @inlinable
    public func generateSignedVideoURL(_ input: GenerateSignedVideoURLRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GenerateSignedVideoURLResponse > {
        self.client.execute(action: "GenerateSignedVideoURL", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取视频防盗链播放URL
    @inlinable
    public func generateSignedVideoURL(_ input: GenerateSignedVideoURLRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateSignedVideoURLResponse {
        try await self.client.execute(action: "GenerateSignedVideoURL", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GenerateSignedVideoURL请求参数结构体
    public struct GenerateSignedVideoURLRequest: TCRequestModel {
        /// 视频播放原始URL地址
        public let videoURL: String
        
        /// 播放链接过期时间
        public let expireTime: UInt64
        
        public init (videoURL: String, expireTime: UInt64) {
            self.videoURL = videoURL
            self.expireTime = expireTime
        }
        
        enum CodingKeys: String, CodingKey {
            case videoURL = "VideoURL"
            case expireTime = "ExpireTime"
        }
    }
    
    /// GenerateSignedVideoURL返回参数结构体
    public struct GenerateSignedVideoURLResponse: TCResponseModel {
        /// 视频防盗链播放URL
        public let signedVideoURL: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case signedVideoURL = "SignedVideoURL"
            case requestId = "RequestId"
        }
    }
}
