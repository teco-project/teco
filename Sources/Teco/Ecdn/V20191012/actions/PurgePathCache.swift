//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Ecdn {
    /// PurgePathCache请求参数结构体
    public struct PurgePathCacheRequest: TCRequest {
        /// 要刷新的目录列表，必须包含协议头部。
        public let paths: [String]

        /// 刷新类型，flush 代表刷新有更新的资源，delete 表示刷新全部资源。
        public let flushType: String

        public init(paths: [String], flushType: String) {
            self.paths = paths
            self.flushType = flushType
        }

        enum CodingKeys: String, CodingKey {
            case paths = "Paths"
            case flushType = "FlushType"
        }
    }

    /// PurgePathCache返回参数结构体
    public struct PurgePathCacheResponse: TCResponse {
        /// 刷新任务Id。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 刷新目录
    ///
    /// PurgePathCache 用于批量刷新目录缓存，一次提交将返回一个刷新任务id。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/570/42475)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func purgePathCache(_ input: PurgePathCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PurgePathCacheResponse> {
        fatalError("'PurgePathCache' is no longer available.")
    }

    /// 刷新目录
    ///
    /// PurgePathCache 用于批量刷新目录缓存，一次提交将返回一个刷新任务id。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/570/42475)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func purgePathCache(_ input: PurgePathCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurgePathCacheResponse {
        fatalError("'PurgePathCache' is no longer available.")
    }

    /// 刷新目录
    ///
    /// PurgePathCache 用于批量刷新目录缓存，一次提交将返回一个刷新任务id。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/570/42475)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func purgePathCache(paths: [String], flushType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PurgePathCacheResponse> {
        fatalError("'PurgePathCache' is no longer available.")
    }

    /// 刷新目录
    ///
    /// PurgePathCache 用于批量刷新目录缓存，一次提交将返回一个刷新任务id。
    ///
    /// > Important: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/570/42475)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func purgePathCache(paths: [String], flushType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurgePathCacheResponse {
        fatalError("'PurgePathCache' is no longer available.")
    }
}
