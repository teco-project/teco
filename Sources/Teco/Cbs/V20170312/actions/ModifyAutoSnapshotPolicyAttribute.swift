//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cbs {
    /// ModifyAutoSnapshotPolicyAttribute请求参数结构体
    public struct ModifyAutoSnapshotPolicyAttributeRequest: TCRequestModel {
        /// 定期快照策略ID。
        public let autoSnapshotPolicyId: String

        /// 是否激活定期快照策略，FALSE表示未激活，TRUE表示激活，默认为TRUE。
        public let isActivated: Bool?

        /// 通过该定期快照策略创建的快照是否永久保留。FALSE表示非永久保留，TRUE表示永久保留，默认为FALSE。
        public let isPermanent: Bool?

        /// 要创建的定期快照策略名。不传则默认为“未命名”。最大长度不能超60个字节。
        public let autoSnapshotPolicyName: String?

        /// 定期快照的执行策略。
        public let policy: [Policy]?

        /// 通过该定期快照策略创建的快照保留天数。如果指定本参数，则IsPermanent入参不可指定为TRUE，否则会产生冲突。
        public let retentionDays: UInt64?

        public init(autoSnapshotPolicyId: String, isActivated: Bool? = nil, isPermanent: Bool? = nil, autoSnapshotPolicyName: String? = nil, policy: [Policy]? = nil, retentionDays: UInt64? = nil) {
            self.autoSnapshotPolicyId = autoSnapshotPolicyId
            self.isActivated = isActivated
            self.isPermanent = isPermanent
            self.autoSnapshotPolicyName = autoSnapshotPolicyName
            self.policy = policy
            self.retentionDays = retentionDays
        }

        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
            case isActivated = "IsActivated"
            case isPermanent = "IsPermanent"
            case autoSnapshotPolicyName = "AutoSnapshotPolicyName"
            case policy = "Policy"
            case retentionDays = "RetentionDays"
        }
    }

    /// ModifyAutoSnapshotPolicyAttribute返回参数结构体
    public struct ModifyAutoSnapshotPolicyAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改定期快照策略信息
    ///
    /// 本接口（ModifyAutoSnapshotPolicyAttribute）用于修改定期快照策略属性。
    /// * 可通过该接口修改定期快照策略的执行策略、名称、是否激活等属性。
    /// * 修改保留天数时必须保证不与是否永久保留属性冲突，否则整个操作失败，以特定的错误码返回。
    @inlinable
    public func modifyAutoSnapshotPolicyAttribute(_ input: ModifyAutoSnapshotPolicyAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAutoSnapshotPolicyAttributeResponse> {
        self.client.execute(action: "ModifyAutoSnapshotPolicyAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改定期快照策略信息
    ///
    /// 本接口（ModifyAutoSnapshotPolicyAttribute）用于修改定期快照策略属性。
    /// * 可通过该接口修改定期快照策略的执行策略、名称、是否激活等属性。
    /// * 修改保留天数时必须保证不与是否永久保留属性冲突，否则整个操作失败，以特定的错误码返回。
    @inlinable
    public func modifyAutoSnapshotPolicyAttribute(_ input: ModifyAutoSnapshotPolicyAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAutoSnapshotPolicyAttributeResponse {
        try await self.client.execute(action: "ModifyAutoSnapshotPolicyAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改定期快照策略信息
    ///
    /// 本接口（ModifyAutoSnapshotPolicyAttribute）用于修改定期快照策略属性。
    /// * 可通过该接口修改定期快照策略的执行策略、名称、是否激活等属性。
    /// * 修改保留天数时必须保证不与是否永久保留属性冲突，否则整个操作失败，以特定的错误码返回。
    @inlinable
    public func modifyAutoSnapshotPolicyAttribute(autoSnapshotPolicyId: String, isActivated: Bool? = nil, isPermanent: Bool? = nil, autoSnapshotPolicyName: String? = nil, policy: [Policy]? = nil, retentionDays: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAutoSnapshotPolicyAttributeResponse> {
        self.modifyAutoSnapshotPolicyAttribute(ModifyAutoSnapshotPolicyAttributeRequest(autoSnapshotPolicyId: autoSnapshotPolicyId, isActivated: isActivated, isPermanent: isPermanent, autoSnapshotPolicyName: autoSnapshotPolicyName, policy: policy, retentionDays: retentionDays), region: region, logger: logger, on: eventLoop)
    }

    /// 修改定期快照策略信息
    ///
    /// 本接口（ModifyAutoSnapshotPolicyAttribute）用于修改定期快照策略属性。
    /// * 可通过该接口修改定期快照策略的执行策略、名称、是否激活等属性。
    /// * 修改保留天数时必须保证不与是否永久保留属性冲突，否则整个操作失败，以特定的错误码返回。
    @inlinable
    public func modifyAutoSnapshotPolicyAttribute(autoSnapshotPolicyId: String, isActivated: Bool? = nil, isPermanent: Bool? = nil, autoSnapshotPolicyName: String? = nil, policy: [Policy]? = nil, retentionDays: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAutoSnapshotPolicyAttributeResponse {
        try await self.modifyAutoSnapshotPolicyAttribute(ModifyAutoSnapshotPolicyAttributeRequest(autoSnapshotPolicyId: autoSnapshotPolicyId, isActivated: isActivated, isPermanent: isPermanent, autoSnapshotPolicyName: autoSnapshotPolicyName, policy: policy, retentionDays: retentionDays), region: region, logger: logger, on: eventLoop)
    }
}
