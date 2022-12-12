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

extension Dcdb {
    /// InitDCDBInstances请求参数结构体
    public struct InitDCDBInstancesRequest: TCRequestModel {
        /// 待初始化的实例ID列表，形如：dcdbt-ow728lmc，可以通过 DescribeDCDBInstances 查询实例详情获得。
        public let instanceIds: [String]
        
        /// 参数列表。本接口的可选值为：character_set_server（字符集，必传），lower_case_table_names（表名大小写敏感，必传，0 - 敏感；1-不敏感），innodb_page_size（innodb数据页，默认16K），sync_mode（同步模式：0 - 异步； 1 - 强同步；2 - 强同步可退化。默认为强同步）。
        public let params: [DBParamValue]
        
        public init (instanceIds: [String], params: [DBParamValue]) {
            self.instanceIds = instanceIds
            self.params = params
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case params = "Params"
        }
    }
    
    /// InitDCDBInstances返回参数结构体
    public struct InitDCDBInstancesResponse: TCResponseModel {
        /// 异步任务ID，可通过 DescribeFlow 查询任务状态。
        public let flowIds: [UInt64]
        
        /// 透传入参。
        public let instanceIds: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowIds = "FlowIds"
            case instanceIds = "InstanceIds"
            case requestId = "RequestId"
        }
    }
    
    /// 初始化实例
    ///
    /// 本接口(InitDCDBInstances)用于初始化云数据库实例，包括设置默认字符集、表名大小写敏感等。
    @inlinable
    public func initDCDBInstances(_ input: InitDCDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < InitDCDBInstancesResponse > {
        self.client.execute(action: "InitDCDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 初始化实例
    ///
    /// 本接口(InitDCDBInstances)用于初始化云数据库实例，包括设置默认字符集、表名大小写敏感等。
    @inlinable
    public func initDCDBInstances(_ input: InitDCDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InitDCDBInstancesResponse {
        try await self.client.execute(action: "InitDCDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
