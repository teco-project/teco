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

import TecoCore

extension Trro {
    /// ModifyPolicy请求参数结构体
    public struct ModifyPolicyRequest: TCRequestModel {
        /// 修改权限配置的项目ID
        public let projectId: String

        /// 修改权限配置的远端设备ID
        public let remoteDeviceId: String

        /// 权限修改涉及的现场设备ID数组
        public let fieldDeviceIds: [String]

        /// 修改的目标权限模式，black为黑名单，white为白名单
        public let policyMode: String

        /// 修改模式，add为新增（添加现场设备I关联），remove为删除（解除现场设备关联），set为设置（更新现场设备关联）
        public let modifyMode: String

        public init(projectId: String, remoteDeviceId: String, fieldDeviceIds: [String], policyMode: String, modifyMode: String) {
            self.projectId = projectId
            self.remoteDeviceId = remoteDeviceId
            self.fieldDeviceIds = fieldDeviceIds
            self.policyMode = policyMode
            self.modifyMode = modifyMode
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case remoteDeviceId = "RemoteDeviceId"
            case fieldDeviceIds = "FieldDeviceIds"
            case policyMode = "PolicyMode"
            case modifyMode = "ModifyMode"
        }
    }

    /// ModifyPolicy返回参数结构体
    public struct ModifyPolicyResponse: TCResponseModel {
        /// 添加关联失败的现场设备ID列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedInsertIds: [String]?

        /// 解除关联失败的现场设备ID列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedDeleteIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case failedInsertIds = "FailedInsertIds"
            case failedDeleteIds = "FailedDeleteIds"
            case requestId = "RequestId"
        }
    }

    /// 修改权限
    ///
    /// 用于修改权限配置
    @inlinable
    public func modifyPolicy(_ input: ModifyPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPolicyResponse> {
        self.client.execute(action: "ModifyPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改权限
    ///
    /// 用于修改权限配置
    @inlinable
    public func modifyPolicy(_ input: ModifyPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPolicyResponse {
        try await self.client.execute(action: "ModifyPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改权限
    ///
    /// 用于修改权限配置
    @inlinable
    public func modifyPolicy(projectId: String, remoteDeviceId: String, fieldDeviceIds: [String], policyMode: String, modifyMode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPolicyResponse> {
        self.modifyPolicy(.init(projectId: projectId, remoteDeviceId: remoteDeviceId, fieldDeviceIds: fieldDeviceIds, policyMode: policyMode, modifyMode: modifyMode), region: region, logger: logger, on: eventLoop)
    }

    /// 修改权限
    ///
    /// 用于修改权限配置
    @inlinable
    public func modifyPolicy(projectId: String, remoteDeviceId: String, fieldDeviceIds: [String], policyMode: String, modifyMode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPolicyResponse {
        try await self.modifyPolicy(.init(projectId: projectId, remoteDeviceId: remoteDeviceId, fieldDeviceIds: fieldDeviceIds, policyMode: policyMode, modifyMode: modifyMode), region: region, logger: logger, on: eventLoop)
    }
}
