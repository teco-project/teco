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

extension Tcss {
    /// ModifyEscapeWhiteList请求参数结构体
    public struct ModifyEscapeWhiteListRequest: TCRequestModel {
        /// 加白名单事件类型
        ///    ESCAPE_CGROUPS：利用cgroup机制逃逸
        ///    ESCAPE_TAMPER_SENSITIVE_FILE：篡改敏感文件逃逸
        ///    ESCAPE_DOCKER_API：访问Docker API接口逃逸
        ///    ESCAPE_VUL_OCCURRED：逃逸漏洞利用
        ///    MOUNT_SENSITIVE_PTAH：敏感路径挂载
        ///    PRIVILEGE_CONTAINER_START：特权容器
        ///    PRIVILEGE：程序提权逃逸
        public let eventType: [String]

        /// 白名单记录ID
        public let idSet: [Int64]

        public init(eventType: [String], idSet: [Int64]) {
            self.eventType = eventType
            self.idSet = idSet
        }

        enum CodingKeys: String, CodingKey {
            case eventType = "EventType"
            case idSet = "IDSet"
        }
    }

    /// ModifyEscapeWhiteList返回参数结构体
    public struct ModifyEscapeWhiteListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改逃逸白名单
    @inlinable @discardableResult
    public func modifyEscapeWhiteList(_ input: ModifyEscapeWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEscapeWhiteListResponse> {
        self.client.execute(action: "ModifyEscapeWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改逃逸白名单
    @inlinable @discardableResult
    public func modifyEscapeWhiteList(_ input: ModifyEscapeWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEscapeWhiteListResponse {
        try await self.client.execute(action: "ModifyEscapeWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改逃逸白名单
    @inlinable @discardableResult
    public func modifyEscapeWhiteList(eventType: [String], idSet: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEscapeWhiteListResponse> {
        self.modifyEscapeWhiteList(.init(eventType: eventType, idSet: idSet), region: region, logger: logger, on: eventLoop)
    }

    /// 修改逃逸白名单
    @inlinable @discardableResult
    public func modifyEscapeWhiteList(eventType: [String], idSet: [Int64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEscapeWhiteListResponse {
        try await self.modifyEscapeWhiteList(.init(eventType: eventType, idSet: idSet), region: region, logger: logger, on: eventLoop)
    }
}
