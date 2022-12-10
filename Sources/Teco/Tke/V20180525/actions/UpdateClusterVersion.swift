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

extension Tke {
    /// 升级集群
    ///
    /// 升级集群 Master 组件到指定版本
    @inlinable
    public func updateClusterVersion(_ input: UpdateClusterVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateClusterVersionResponse > {
        self.client.execute(action: "UpdateClusterVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 升级集群
    ///
    /// 升级集群 Master 组件到指定版本
    @inlinable
    public func updateClusterVersion(_ input: UpdateClusterVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateClusterVersionResponse {
        try await self.client.execute(action: "UpdateClusterVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateClusterVersion请求参数结构体
    public struct UpdateClusterVersionRequest: TCRequestModel {
        /// 集群 Id
        public let clusterId: String
        
        /// 需要升级到的版本
        public let dstVersion: String
        
        /// 集群自定义参数
        public let extraArgs: ClusterExtraArgs
        
        /// 可容忍的最大不可用pod数目
        public let maxNotReadyPercent: Float?
        
        /// 是否跳过预检查阶段
        public let skipPreCheck: Bool?
        
        public init (clusterId: String, dstVersion: String, extraArgs: ClusterExtraArgs, maxNotReadyPercent: Float?, skipPreCheck: Bool?) {
            self.clusterId = clusterId
            self.dstVersion = dstVersion
            self.extraArgs = extraArgs
            self.maxNotReadyPercent = maxNotReadyPercent
            self.skipPreCheck = skipPreCheck
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case dstVersion = "DstVersion"
            case extraArgs = "ExtraArgs"
            case maxNotReadyPercent = "MaxNotReadyPercent"
            case skipPreCheck = "SkipPreCheck"
        }
    }
    
    /// UpdateClusterVersion返回参数结构体
    public struct UpdateClusterVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
