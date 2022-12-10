//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cbs {
    /// 创建定期快照策略
    ///
    /// 本接口（CreateAutoSnapshotPolicy）用于创建定期快照策略。
    /// * 每个地域可创建的定期快照策略数量限制请参考文档[定期快照](/document/product/362/8191)。
    /// * 每个地域可创建的快照有数量和容量的限制，具体请见腾讯云控制台快照页面提示，如果快照超配额，定期快照创建会失败。
    @inlinable
    public func createAutoSnapshotPolicy(_ input: CreateAutoSnapshotPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAutoSnapshotPolicyResponse > {
        self.client.execute(action: "CreateAutoSnapshotPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建定期快照策略
    ///
    /// 本接口（CreateAutoSnapshotPolicy）用于创建定期快照策略。
    /// * 每个地域可创建的定期快照策略数量限制请参考文档[定期快照](/document/product/362/8191)。
    /// * 每个地域可创建的快照有数量和容量的限制，具体请见腾讯云控制台快照页面提示，如果快照超配额，定期快照创建会失败。
    @inlinable
    public func createAutoSnapshotPolicy(_ input: CreateAutoSnapshotPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAutoSnapshotPolicyResponse {
        try await self.client.execute(action: "CreateAutoSnapshotPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAutoSnapshotPolicy请求参数结构体
    public struct CreateAutoSnapshotPolicyRequest: TCRequestModel {
        /// 定期快照的执行策略。
        public let policy: [Policy]
        
        /// 是否创建定期快照的执行策略。TRUE表示只需获取首次开始备份的时间，不实际创建定期快照策略，FALSE表示创建，默认为FALSE。
        public let dryRun: Bool?
        
        /// 是否激活定期快照策略，FALSE表示未激活，TRUE表示激活，默认为TRUE。
        public let isActivated: Bool?
        
        /// 要创建的定期快照策略名。不传则默认为“未命名”。最大长度不能超60个字节。
        public let autoSnapshotPolicyName: String?
        
        /// 通过该定期快照策略创建的快照是否永久保留。FALSE表示非永久保留，TRUE表示永久保留，默认为FALSE。
        public let isPermanent: Bool?
        
        /// 通过该定期快照策略创建的快照保留天数，默认保留7天。如果指定本参数，则IsPermanent入参不可指定为TRUE，否则会产生冲突。
        public let retentionDays: UInt64?
        
        public init (policy: [Policy], dryRun: Bool?, isActivated: Bool?, autoSnapshotPolicyName: String?, isPermanent: Bool?, retentionDays: UInt64?) {
            self.policy = policy
            self.dryRun = dryRun
            self.isActivated = isActivated
            self.autoSnapshotPolicyName = autoSnapshotPolicyName
            self.isPermanent = isPermanent
            self.retentionDays = retentionDays
        }
        
        enum CodingKeys: String, CodingKey {
            case policy = "Policy"
            case dryRun = "DryRun"
            case isActivated = "IsActivated"
            case autoSnapshotPolicyName = "AutoSnapshotPolicyName"
            case isPermanent = "IsPermanent"
            case retentionDays = "RetentionDays"
        }
    }
    
    /// CreateAutoSnapshotPolicy返回参数结构体
    public struct CreateAutoSnapshotPolicyResponse: TCResponseModel {
        /// 新创建的定期快照策略ID。
        public let autoSnapshotPolicyId: String
        
        /// 首次开始备份的时间。
        public let nextTriggerTime: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
            case nextTriggerTime = "NextTriggerTime"
            case requestId = "RequestId"
        }
    }
}