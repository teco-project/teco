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
    /// 删除直播接口
    ///
    /// 删除直播接口
    @inlinable
    public func deleteLiveChannel(_ input: DeleteLiveChannelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLiveChannelResponse > {
        self.client.execute(action: "DeleteLiveChannel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除直播接口
    ///
    /// 删除直播接口
    @inlinable
    public func deleteLiveChannel(_ input: DeleteLiveChannelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveChannelResponse {
        try await self.client.execute(action: "DeleteLiveChannel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteLiveChannel请求参数结构体
    public struct DeleteLiveChannelRequest: TCRequestModel {
        /// 直播频道ID
        public let liveChannelId: String
        
        public init (liveChannelId: String) {
            self.liveChannelId = liveChannelId
        }
        
        enum CodingKeys: String, CodingKey {
            case liveChannelId = "LiveChannelId"
        }
    }
    
    /// DeleteLiveChannel返回参数结构体
    public struct DeleteLiveChannelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}