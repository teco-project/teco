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

extension Cdn {
    /// 刷新目录
    ///
    /// PurgePathCache 用于批量提交目录刷新，根据域名的加速区域进行对应区域的刷新。
    /// 默认情况下境内、境外加速区域每日目录刷新额度为各 100 条，每次最多可提交 500 条。
    @inlinable
    public func purgePathCache(_ input: PurgePathCacheRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < PurgePathCacheResponse > {
        self.client.execute(action: "PurgePathCache", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 刷新目录
    ///
    /// PurgePathCache 用于批量提交目录刷新，根据域名的加速区域进行对应区域的刷新。
    /// 默认情况下境内、境外加速区域每日目录刷新额度为各 100 条，每次最多可提交 500 条。
    @inlinable
    public func purgePathCache(_ input: PurgePathCacheRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PurgePathCacheResponse {
        try await self.client.execute(action: "PurgePathCache", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// PurgePathCache请求参数结构体
    public struct PurgePathCacheRequest: TCRequestModel {
        /// 目录列表，需要包含协议头部 http:// 或 https://
        public let paths: [String]
        
        /// 刷新类型
        /// flush：刷新产生更新的资源
        /// delete：刷新全部资源
        public let flushType: String
        
        /// 是否对中文字符进行编码后刷新
        public let urlEncode: Bool?
        
        /// 刷新区域
        /// 无此参数时，默认刷新加速域名所在加速区域
        /// 填充 mainland 时，仅刷新中国境内加速节点上缓存内容
        /// 填充 overseas 时，仅刷新中国境外加速节点上缓存内容
        /// 指定刷新区域时，需要与域名加速区域匹配
        public let area: String?
        
        public init (paths: [String], flushType: String, urlEncode: Bool?, area: String?) {
            self.paths = paths
            self.flushType = flushType
            self.urlEncode = urlEncode
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case paths = "Paths"
            case flushType = "FlushType"
            case urlEncode = "UrlEncode"
            case area = "Area"
        }
    }
    
    /// PurgePathCache返回参数结构体
    public struct PurgePathCacheResponse: TCResponseModel {
        /// 刷新任务 ID，同一批次提交的目录共用一个任务 ID
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}
