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
    /// 更新定期快照策略
    ///
    /// 更新定期自动快照策略
    @inlinable
    public func updateAutoSnapshotPolicy(_ input: UpdateAutoSnapshotPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateAutoSnapshotPolicyResponse > {
        self.client.execute(action: "UpdateAutoSnapshotPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新定期快照策略
    ///
    /// 更新定期自动快照策略
    @inlinable
    public func updateAutoSnapshotPolicy(_ input: UpdateAutoSnapshotPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAutoSnapshotPolicyResponse {
        try await self.client.execute(action: "UpdateAutoSnapshotPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateAutoSnapshotPolicy请求参数结构体
    public struct UpdateAutoSnapshotPolicyRequest: TCRequestModel {
        /// 快照策略ID
        public let autoSnapshotPolicyId: String
        
        /// 快照策略名称
        public let policyName: String?
        
        /// 快照定期备份在一星期哪一天
        public let dayOfWeek: String?
        
        /// 快照定期备份在一天的哪一小时
        public let hour: String?
        
        /// 快照保留日期
        public let aliveDays: UInt64?
        
        /// 是否激活定期快照功能
        public let isActivated: UInt64?
        
        public init (autoSnapshotPolicyId: String, policyName: String?, dayOfWeek: String?, hour: String?, aliveDays: UInt64?, isActivated: UInt64?) {
            self.autoSnapshotPolicyId = autoSnapshotPolicyId
            self.policyName = policyName
            self.dayOfWeek = dayOfWeek
            self.hour = hour
            self.aliveDays = aliveDays
            self.isActivated = isActivated
        }
        
        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
            case policyName = "PolicyName"
            case dayOfWeek = "DayOfWeek"
            case hour = "Hour"
            case aliveDays = "AliveDays"
            case isActivated = "IsActivated"
        }
    }
    
    /// UpdateAutoSnapshotPolicy返回参数结构体
    public struct UpdateAutoSnapshotPolicyResponse: TCResponseModel {
        /// 快照策略ID
        public let autoSnapshotPolicyId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
            case requestId = "RequestId"
        }
    }
}
