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
    /// ModifyEscapeEventStatus请求参数结构体
    public struct ModifyEscapeEventStatusRequest: TCRequest {
        /// 处理事件ids
        public let eventIdSet: [String]

        /// 标记事件的状态：
        /// EVENT_UNDEAL:未处理（取消忽略），
        /// EVENT_DEALED:已处理，
        /// EVENT_IGNORE:忽略，
        /// EVENT_DELETE：已删除
        /// EVENT_ADD_WHITE：加白
        public let status: String

        /// 备注
        public let remark: String?

        /// 加白镜像ID数组
        public let imageIDs: [String]?

        /// 加白事件类型
        ///    ESCAPE_CGROUPS：利用cgroup机制逃逸
        ///    ESCAPE_TAMPER_SENSITIVE_FILE：篡改敏感文件逃逸
        ///    ESCAPE_DOCKER_API：访问Docker API接口逃逸
        ///    ESCAPE_VUL_OCCURRED：逃逸漏洞利用
        ///    MOUNT_SENSITIVE_PTAH：敏感路径挂载
        ///    PRIVILEGE_CONTAINER_START：特权容器
        ///    PRIVILEGE：程序提权逃逸
        public let eventType: [String]?

        public init(eventIdSet: [String], status: String, remark: String? = nil, imageIDs: [String]? = nil, eventType: [String]? = nil) {
            self.eventIdSet = eventIdSet
            self.status = status
            self.remark = remark
            self.imageIDs = imageIDs
            self.eventType = eventType
        }

        enum CodingKeys: String, CodingKey {
            case eventIdSet = "EventIdSet"
            case status = "Status"
            case remark = "Remark"
            case imageIDs = "ImageIDs"
            case eventType = "EventType"
        }
    }

    /// ModifyEscapeEventStatus返回参数结构体
    public struct ModifyEscapeEventStatusResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改容器逃逸扫描事件状态
    ///
    /// ModifyEscapeEventStatus  修改容器逃逸扫描事件状态
    @inlinable @discardableResult
    public func modifyEscapeEventStatus(_ input: ModifyEscapeEventStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEscapeEventStatusResponse> {
        self.client.execute(action: "ModifyEscapeEventStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改容器逃逸扫描事件状态
    ///
    /// ModifyEscapeEventStatus  修改容器逃逸扫描事件状态
    @inlinable @discardableResult
    public func modifyEscapeEventStatus(_ input: ModifyEscapeEventStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEscapeEventStatusResponse {
        try await self.client.execute(action: "ModifyEscapeEventStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改容器逃逸扫描事件状态
    ///
    /// ModifyEscapeEventStatus  修改容器逃逸扫描事件状态
    @inlinable @discardableResult
    public func modifyEscapeEventStatus(eventIdSet: [String], status: String, remark: String? = nil, imageIDs: [String]? = nil, eventType: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEscapeEventStatusResponse> {
        self.modifyEscapeEventStatus(.init(eventIdSet: eventIdSet, status: status, remark: remark, imageIDs: imageIDs, eventType: eventType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改容器逃逸扫描事件状态
    ///
    /// ModifyEscapeEventStatus  修改容器逃逸扫描事件状态
    @inlinable @discardableResult
    public func modifyEscapeEventStatus(eventIdSet: [String], status: String, remark: String? = nil, imageIDs: [String]? = nil, eventType: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEscapeEventStatusResponse {
        try await self.modifyEscapeEventStatus(.init(eventIdSet: eventIdSet, status: status, remark: remark, imageIDs: imageIDs, eventType: eventType), region: region, logger: logger, on: eventLoop)
    }
}
