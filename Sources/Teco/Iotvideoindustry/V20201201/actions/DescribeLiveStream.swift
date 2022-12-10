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

extension Iotvideoindustry {
    /// 直播拉流接口
    ///
    /// 直播拉流接口
    @inlinable
    public func describeLiveStream(_ input: DescribeLiveStreamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeLiveStreamResponse > {
        self.client.execute(action: "DescribeLiveStream", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 直播拉流接口
    ///
    /// 直播拉流接口
    @inlinable
    public func describeLiveStream(_ input: DescribeLiveStreamRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamResponse {
        try await self.client.execute(action: "DescribeLiveStream", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeLiveStream请求参数结构体
    public struct DescribeLiveStreamRequest: TCRequestModel {
        /// 频道ID
        public let liveChannelId: String
        
        /// 过期时间 秒级unix时间戳
        public let expireTime: Int64
        
        public init (liveChannelId: String, expireTime: Int64) {
            self.liveChannelId = liveChannelId
            self.expireTime = expireTime
        }
        
        enum CodingKeys: String, CodingKey {
            case liveChannelId = "LiveChannelId"
            case expireTime = "ExpireTime"
        }
    }
    
    /// DescribeLiveStream返回参数结构体
    public struct DescribeLiveStreamResponse: TCResponseModel {
        /// 拉流地址，只有在推流情况下才有
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: StreamAddress
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}