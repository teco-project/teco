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

extension Sqlserver {
    /// DescribeProductConfig请求参数结构体
    public struct DescribeProductConfigRequest: TCRequestModel {
        /// 可用区英文ID，形如ap-guangzhou-1
        public let zone: String
        
        /// 购买实例的类型 HA-高可用型(包括双机高可用，alwaysOn集群)，RO-只读副本型，SI-基础版本型
        public let instanceType: String?
        
        public init (zone: String, instanceType: String? = nil) {
            self.zone = zone
            self.instanceType = instanceType
        }
        
        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case instanceType = "InstanceType"
        }
    }
    
    /// DescribeProductConfig返回参数结构体
    public struct DescribeProductConfigResponse: TCResponseModel {
        /// 规格信息数组
        public let specInfoList: [SpecInfo]
        
        /// 返回总共多少条数据
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case specInfoList = "SpecInfoList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询售卖规格配置
    ///
    /// 本接口 (DescribeProductConfig) 用于查询售卖规格配置。
    @inlinable
    public func describeProductConfig(_ input: DescribeProductConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProductConfigResponse > {
        self.client.execute(action: "DescribeProductConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询售卖规格配置
    ///
    /// 本接口 (DescribeProductConfig) 用于查询售卖规格配置。
    @inlinable
    public func describeProductConfig(_ input: DescribeProductConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductConfigResponse {
        try await self.client.execute(action: "DescribeProductConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
