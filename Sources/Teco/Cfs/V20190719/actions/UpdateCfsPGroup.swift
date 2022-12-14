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

extension Cfs {
    /// UpdateCfsPGroup请求参数结构体
    public struct UpdateCfsPGroupRequest: TCRequestModel {
        /// 权限组 ID
        public let pGroupId: String

        /// 权限组名称，1-64个字符且只能为中文，字母，数字，下划线或横线
        public let name: String?

        /// 权限组描述信息，1-255个字符
        public let descInfo: String?

        public init(pGroupId: String, name: String? = nil, descInfo: String? = nil) {
            self.pGroupId = pGroupId
            self.name = name
            self.descInfo = descInfo
        }

        enum CodingKeys: String, CodingKey {
            case pGroupId = "PGroupId"
            case name = "Name"
            case descInfo = "DescInfo"
        }
    }

    /// UpdateCfsPGroup返回参数结构体
    public struct UpdateCfsPGroupResponse: TCResponseModel {
        /// 权限组ID
        public let pGroupId: String

        /// 权限组名称
        public let name: String

        /// 描述信息
        public let descInfo: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pGroupId = "PGroupId"
            case name = "Name"
            case descInfo = "DescInfo"
            case requestId = "RequestId"
        }
    }

    /// 更新权限组信息
    ///
    /// 本接口（UpdateCfsPGroup）更新权限组信息。
    @inlinable
    public func updateCfsPGroup(_ input: UpdateCfsPGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateCfsPGroupResponse > {
        self.client.execute(action: "UpdateCfsPGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新权限组信息
    ///
    /// 本接口（UpdateCfsPGroup）更新权限组信息。
    @inlinable
    public func updateCfsPGroup(_ input: UpdateCfsPGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCfsPGroupResponse {
        try await self.client.execute(action: "UpdateCfsPGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新权限组信息
    ///
    /// 本接口（UpdateCfsPGroup）更新权限组信息。
    @inlinable
    public func updateCfsPGroup(pGroupId: String, name: String? = nil, descInfo: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateCfsPGroupResponse > {
        self.updateCfsPGroup(UpdateCfsPGroupRequest(pGroupId: pGroupId, name: name, descInfo: descInfo), logger: logger, on: eventLoop)
    }

    /// 更新权限组信息
    ///
    /// 本接口（UpdateCfsPGroup）更新权限组信息。
    @inlinable
    public func updateCfsPGroup(pGroupId: String, name: String? = nil, descInfo: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCfsPGroupResponse {
        try await self.updateCfsPGroup(UpdateCfsPGroupRequest(pGroupId: pGroupId, name: name, descInfo: descInfo), logger: logger, on: eventLoop)
    }
}
