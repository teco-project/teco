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

extension Tdcpg {
    /// ModifyClustersAutoRenewFlag请求参数结构体
    public struct ModifyClustersAutoRenewFlagRequest: TCRequestModel {
        /// 集群ID列表
        public let clusterIdSet: [String]
        
        /// 是否自动续费，0-不 1-是。默认为0，只有当集群的PayMode为PREPAID时生效。
        public let autoRenewFlag: UInt64
        
        public init (clusterIdSet: [String], autoRenewFlag: UInt64) {
            self.clusterIdSet = clusterIdSet
            self.autoRenewFlag = autoRenewFlag
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterIdSet = "ClusterIdSet"
            case autoRenewFlag = "AutoRenewFlag"
        }
    }
    
    /// ModifyClustersAutoRenewFlag返回参数结构体
    public struct ModifyClustersAutoRenewFlagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改集群自动续费
    ///
    /// 修改集群自动续费，只对预付费集群生效。
    @inlinable
    public func modifyClustersAutoRenewFlag(_ input: ModifyClustersAutoRenewFlagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyClustersAutoRenewFlagResponse > {
        self.client.execute(action: "ModifyClustersAutoRenewFlag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改集群自动续费
    ///
    /// 修改集群自动续费，只对预付费集群生效。
    @inlinable
    public func modifyClustersAutoRenewFlag(_ input: ModifyClustersAutoRenewFlagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClustersAutoRenewFlagResponse {
        try await self.client.execute(action: "ModifyClustersAutoRenewFlag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
