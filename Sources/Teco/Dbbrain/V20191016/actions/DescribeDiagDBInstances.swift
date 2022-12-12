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

extension Dbbrain {
    /// DescribeDiagDBInstances请求参数结构体
    public struct DescribeDiagDBInstancesRequest: TCRequestModel {
        /// 是否是DBbrain支持的实例，固定传 true。
        public let isSupported: Bool
        
        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String
        
        /// 分页参数，偏移量。
        public let offset: Int64
        
        /// 分页参数，分页值。
        public let limit: Int64
        
        /// 根据实例名称条件查询。
        public let instanceNames: [String]?
        
        /// 根据实例ID条件查询。
        public let instanceIds: [String]?
        
        /// 根据地域条件查询。
        public let regions: [String]?
        
        public init (isSupported: Bool, product: String, offset: Int64, limit: Int64, instanceNames: [String]? = nil, instanceIds: [String]? = nil, regions: [String]? = nil) {
            self.isSupported = isSupported
            self.product = product
            self.offset = offset
            self.limit = limit
            self.instanceNames = instanceNames
            self.instanceIds = instanceIds
            self.regions = regions
        }
        
        enum CodingKeys: String, CodingKey {
            case isSupported = "IsSupported"
            case product = "Product"
            case offset = "Offset"
            case limit = "Limit"
            case instanceNames = "InstanceNames"
            case instanceIds = "InstanceIds"
            case regions = "Regions"
        }
    }
    
    /// DescribeDiagDBInstances返回参数结构体
    public struct DescribeDiagDBInstancesResponse: TCResponseModel {
        /// 实例总数。
        public let totalCount: Int64
        
        /// 全实例巡检状态：0：开启全实例巡检；1：未开启全实例巡检。
        public let dbScanStatus: Int64
        
        /// 实例相关信息。
        public let items: [InstanceInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dbScanStatus = "DbScanStatus"
            case items = "Items"
            case requestId = "RequestId"
        }
    }
    
    /// 获取实例信息列表
    ///
    /// 获取实例信息列表。Region统一选择广州。
    @inlinable
    public func describeDiagDBInstances(_ input: DescribeDiagDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDiagDBInstancesResponse > {
        self.client.execute(action: "DescribeDiagDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取实例信息列表
    ///
    /// 获取实例信息列表。Region统一选择广州。
    @inlinable
    public func describeDiagDBInstances(_ input: DescribeDiagDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDiagDBInstancesResponse {
        try await self.client.execute(action: "DescribeDiagDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
