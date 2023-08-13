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

extension Teo {
    /// CreatePurgeTask请求参数结构体
    public struct CreatePurgeTaskRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// 节点缓存清除类型，取值有：
        /// - purge_url：URL刷新；
        /// - purge_prefix：目录刷新；
        /// - purge_host：Hostname 刷新；
        /// - purge_all：站点下全部缓存刷新；
        /// - purge_cache_tag：cache-tag 刷新。缓存清除类型详情请查看[清除缓存](https://cloud.tencent.com/document/product/1552/70759)。
        public let type: String

        /// 节点缓存清除方法，仅对目录刷新类型有效，取值有：
        /// - invalidate：仅刷新目录下产生了更新的资源；
        /// - delete：无论目录下资源是否更新都刷新节点资源。注意：使用目录刷新时，默认值： invalidate。
        public let method: String?

        /// 要清除缓存的资源列表。每个元素格式依据清除缓存类型而定，可参考接口示例。
        /// - EO 默认针对内容含有非 ASCII 字符集的字符进行转义，编码规则遵循 RFC3986；
        /// - 单次提交的任务数受计费套餐配额限制，请查看 [EO计费套餐](https://cloud.tencent.com/document/product/1552/77380)。
        public let targets: [String]?

        /// 若有编码转换，仅清除编码转换后匹配的资源。
        /// 若内容含有非 ASCII 字符集的字符，请开启此开关进行编码转换（编码规则遵循 RFC3986）。
        @available(*, deprecated)
        public let encodeUrl: Bool? = nil

        public init(zoneId: String, type: String, method: String? = nil, targets: [String]? = nil) {
            self.zoneId = zoneId
            self.type = type
            self.method = method
            self.targets = targets
        }

        @available(*, deprecated, renamed: "init(zoneId:type:method:targets:)", message: "'encodeUrl' is deprecated in 'CreatePurgeTaskRequest'. Setting this parameter has no effect.")
        public init(zoneId: String, type: String, method: String? = nil, targets: [String]? = nil, encodeUrl: Bool? = nil) {
            self.zoneId = zoneId
            self.type = type
            self.method = method
            self.targets = targets
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case type = "Type"
            case method = "Method"
            case targets = "Targets"
            case encodeUrl = "EncodeUrl"
        }
    }

    /// CreatePurgeTask返回参数结构体
    public struct CreatePurgeTaskResponse: TCResponseModel {
        /// 任务 ID。
        public let jobId: String

        /// 失败的任务列表及原因。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedList: [FailReason]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case failedList = "FailedList"
            case requestId = "RequestId"
        }
    }

    /// 创建清除缓存任务
    ///
    /// 当源站资源更新，但节点缓存 TTL 未过期时，用户仍会访问到旧的资源，此时可以通过该接口实现节点资源更新。触发更新的方法有以下两种：
    /// - 直接删除：不做任何校验，直接删除节点缓存，用户请求时触发回源拉取；
    /// - 标记过期：将节点资源置为过期，用户请求时触发回源校验，即发送带有 If-None-Match 和 If-Modified-Since 头部的 HTTP 条件请求。若源站响应 200，则节点会回源拉取新的资源并更新缓存；若源站响应 304，则节点不会更新缓存；
    ///
    /// 清除缓存任务详情请查看[清除缓存](https://cloud.tencent.com/document/product/1552/70759)。</li>
    @inlinable
    public func createPurgeTask(_ input: CreatePurgeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePurgeTaskResponse> {
        self.client.execute(action: "CreatePurgeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建清除缓存任务
    ///
    /// 当源站资源更新，但节点缓存 TTL 未过期时，用户仍会访问到旧的资源，此时可以通过该接口实现节点资源更新。触发更新的方法有以下两种：
    /// - 直接删除：不做任何校验，直接删除节点缓存，用户请求时触发回源拉取；
    /// - 标记过期：将节点资源置为过期，用户请求时触发回源校验，即发送带有 If-None-Match 和 If-Modified-Since 头部的 HTTP 条件请求。若源站响应 200，则节点会回源拉取新的资源并更新缓存；若源站响应 304，则节点不会更新缓存；
    ///
    /// 清除缓存任务详情请查看[清除缓存](https://cloud.tencent.com/document/product/1552/70759)。</li>
    @inlinable
    public func createPurgeTask(_ input: CreatePurgeTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePurgeTaskResponse {
        try await self.client.execute(action: "CreatePurgeTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建清除缓存任务
    ///
    /// 当源站资源更新，但节点缓存 TTL 未过期时，用户仍会访问到旧的资源，此时可以通过该接口实现节点资源更新。触发更新的方法有以下两种：
    /// - 直接删除：不做任何校验，直接删除节点缓存，用户请求时触发回源拉取；
    /// - 标记过期：将节点资源置为过期，用户请求时触发回源校验，即发送带有 If-None-Match 和 If-Modified-Since 头部的 HTTP 条件请求。若源站响应 200，则节点会回源拉取新的资源并更新缓存；若源站响应 304，则节点不会更新缓存；
    ///
    /// 清除缓存任务详情请查看[清除缓存](https://cloud.tencent.com/document/product/1552/70759)。</li>
    @inlinable
    public func createPurgeTask(zoneId: String, type: String, method: String? = nil, targets: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePurgeTaskResponse> {
        self.createPurgeTask(.init(zoneId: zoneId, type: type, method: method, targets: targets), region: region, logger: logger, on: eventLoop)
    }

    /// 创建清除缓存任务
    ///
    /// 当源站资源更新，但节点缓存 TTL 未过期时，用户仍会访问到旧的资源，此时可以通过该接口实现节点资源更新。触发更新的方法有以下两种：
    /// - 直接删除：不做任何校验，直接删除节点缓存，用户请求时触发回源拉取；
    /// - 标记过期：将节点资源置为过期，用户请求时触发回源校验，即发送带有 If-None-Match 和 If-Modified-Since 头部的 HTTP 条件请求。若源站响应 200，则节点会回源拉取新的资源并更新缓存；若源站响应 304，则节点不会更新缓存；
    ///
    /// 清除缓存任务详情请查看[清除缓存](https://cloud.tencent.com/document/product/1552/70759)。</li>
    @available(*, deprecated, renamed: "createPurgeTask(zoneId:type:method:targets:region:logger:on:)", message: "'encodeUrl' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func createPurgeTask(zoneId: String, type: String, method: String? = nil, targets: [String]? = nil, encodeUrl: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePurgeTaskResponse> {
        self.createPurgeTask(.init(zoneId: zoneId, type: type, method: method, targets: targets, encodeUrl: encodeUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 创建清除缓存任务
    ///
    /// 当源站资源更新，但节点缓存 TTL 未过期时，用户仍会访问到旧的资源，此时可以通过该接口实现节点资源更新。触发更新的方法有以下两种：
    /// - 直接删除：不做任何校验，直接删除节点缓存，用户请求时触发回源拉取；
    /// - 标记过期：将节点资源置为过期，用户请求时触发回源校验，即发送带有 If-None-Match 和 If-Modified-Since 头部的 HTTP 条件请求。若源站响应 200，则节点会回源拉取新的资源并更新缓存；若源站响应 304，则节点不会更新缓存；
    ///
    /// 清除缓存任务详情请查看[清除缓存](https://cloud.tencent.com/document/product/1552/70759)。</li>
    @inlinable
    public func createPurgeTask(zoneId: String, type: String, method: String? = nil, targets: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePurgeTaskResponse {
        try await self.createPurgeTask(.init(zoneId: zoneId, type: type, method: method, targets: targets), region: region, logger: logger, on: eventLoop)
    }

    /// 创建清除缓存任务
    ///
    /// 当源站资源更新，但节点缓存 TTL 未过期时，用户仍会访问到旧的资源，此时可以通过该接口实现节点资源更新。触发更新的方法有以下两种：
    /// - 直接删除：不做任何校验，直接删除节点缓存，用户请求时触发回源拉取；
    /// - 标记过期：将节点资源置为过期，用户请求时触发回源校验，即发送带有 If-None-Match 和 If-Modified-Since 头部的 HTTP 条件请求。若源站响应 200，则节点会回源拉取新的资源并更新缓存；若源站响应 304，则节点不会更新缓存；
    ///
    /// 清除缓存任务详情请查看[清除缓存](https://cloud.tencent.com/document/product/1552/70759)。</li>
    @available(*, deprecated, renamed: "createPurgeTask(zoneId:type:method:targets:region:logger:on:)", message: "'encodeUrl' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func createPurgeTask(zoneId: String, type: String, method: String? = nil, targets: [String]? = nil, encodeUrl: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePurgeTaskResponse {
        try await self.createPurgeTask(.init(zoneId: zoneId, type: type, method: method, targets: targets, encodeUrl: encodeUrl), region: region, logger: logger, on: eventLoop)
    }
}
