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

extension Tcss {
    /// AddEscapeWhiteList请求参数结构体
    public struct AddEscapeWhiteListRequest: TCRequest {
        /// 加白名单事件类型
        ///    ESCAPE_CGROUPS：利用cgroup机制逃逸
        ///    ESCAPE_TAMPER_SENSITIVE_FILE：篡改敏感文件逃逸
        ///    ESCAPE_DOCKER_API：访问Docker API接口逃逸
        ///    ESCAPE_VUL_OCCURRED：逃逸漏洞利用
        ///    MOUNT_SENSITIVE_PTAH：敏感路径挂载
        ///    PRIVILEGE_CONTAINER_START：特权容器
        ///    PRIVILEGE：程序提权逃逸
        public let eventType: [String]

        /// 加白名单镜像ID数组
        public let imageIDs: [String]

        public init(eventType: [String], imageIDs: [String]) {
            self.eventType = eventType
            self.imageIDs = imageIDs
        }

        enum CodingKeys: String, CodingKey {
            case eventType = "EventType"
            case imageIDs = "ImageIDs"
        }
    }

    /// AddEscapeWhiteList返回参数结构体
    public struct AddEscapeWhiteListResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增逃逸白名单
    @inlinable @discardableResult
    public func addEscapeWhiteList(_ input: AddEscapeWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddEscapeWhiteListResponse> {
        self.client.execute(action: "AddEscapeWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增逃逸白名单
    @inlinable @discardableResult
    public func addEscapeWhiteList(_ input: AddEscapeWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEscapeWhiteListResponse {
        try await self.client.execute(action: "AddEscapeWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增逃逸白名单
    @inlinable @discardableResult
    public func addEscapeWhiteList(eventType: [String], imageIDs: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddEscapeWhiteListResponse> {
        self.addEscapeWhiteList(.init(eventType: eventType, imageIDs: imageIDs), region: region, logger: logger, on: eventLoop)
    }

    /// 新增逃逸白名单
    @inlinable @discardableResult
    public func addEscapeWhiteList(eventType: [String], imageIDs: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEscapeWhiteListResponse {
        try await self.addEscapeWhiteList(.init(eventType: eventType, imageIDs: imageIDs), region: region, logger: logger, on: eventLoop)
    }
}
