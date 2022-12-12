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
    /// DescribeVpcCniPodLimits请求参数结构体
    public struct DescribeVpcCniPodLimitsRequest: TCRequestModel {
        /// 查询的机型所在可用区，如：ap-guangzhou-3，默认为空，即不按可用区过滤信息
        public let zone: String?
        
        /// 查询的实例机型系列信息，如：S5，默认为空，即不按机型系列过滤信息
        public let instanceFamily: String?
        
        /// 查询的实例机型信息，如：S5.LARGE8，默认为空，即不按机型过滤信息
        public let instanceType: String?
        
        public init (zone: String? = nil, instanceFamily: String? = nil, instanceType: String? = nil) {
            self.zone = zone
            self.instanceFamily = instanceFamily
            self.instanceType = instanceType
        }
        
        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case instanceFamily = "InstanceFamily"
            case instanceType = "InstanceType"
        }
    }
    
    /// DescribeVpcCniPodLimits返回参数结构体
    public struct DescribeVpcCniPodLimitsResponse: TCResponseModel {
        /// 机型数据数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?
        
        /// 机型信息及其可支持的最大VPC-CNI模式Pod数量信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let podLimitsInstanceSet: [PodLimitsInstance]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case podLimitsInstanceSet = "PodLimitsInstanceSet"
            case requestId = "RequestId"
        }
    }
    
    /// 查询机型可支持的最大VPC-CNI模式Pod数量
    ///
    /// 本接口查询当前用户和地域在指定可用区下的机型可支持的最大 TKE VPC-CNI 网络模式的 Pod 数量
    @inlinable
    public func describeVpcCniPodLimits(_ input: DescribeVpcCniPodLimitsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeVpcCniPodLimitsResponse > {
        self.client.execute(action: "DescribeVpcCniPodLimits", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询机型可支持的最大VPC-CNI模式Pod数量
    ///
    /// 本接口查询当前用户和地域在指定可用区下的机型可支持的最大 TKE VPC-CNI 网络模式的 Pod 数量
    @inlinable
    public func describeVpcCniPodLimits(_ input: DescribeVpcCniPodLimitsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcCniPodLimitsResponse {
        try await self.client.execute(action: "DescribeVpcCniPodLimits", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
