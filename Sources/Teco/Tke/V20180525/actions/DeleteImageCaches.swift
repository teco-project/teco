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

extension Tke {
    /// 删除镜像缓存
    ///
    /// 批量删除镜像缓存
    @inlinable
    public func deleteImageCaches(_ input: DeleteImageCachesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteImageCachesResponse > {
        self.client.execute(action: "DeleteImageCaches", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除镜像缓存
    ///
    /// 批量删除镜像缓存
    @inlinable
    public func deleteImageCaches(_ input: DeleteImageCachesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageCachesResponse {
        try await self.client.execute(action: "DeleteImageCaches", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteImageCaches请求参数结构体
    public struct DeleteImageCachesRequest: TCRequestModel {
        /// 镜像缓存Id数组
        public let imageCacheIds: [String]
        
        public init (imageCacheIds: [String]) {
            self.imageCacheIds = imageCacheIds
        }
        
        enum CodingKeys: String, CodingKey {
            case imageCacheIds = "ImageCacheIds"
        }
    }
    
    /// DeleteImageCaches返回参数结构体
    public struct DeleteImageCachesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
