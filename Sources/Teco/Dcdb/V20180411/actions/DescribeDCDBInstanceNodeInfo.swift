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

extension Dcdb {
    /// 获取实例节点信息
    ///
    /// 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息
    @inlinable
    public func describeDCDBInstanceNodeInfo(_ input: DescribeDCDBInstanceNodeInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDCDBInstanceNodeInfoResponse > {
        self.client.execute(action: "DescribeDCDBInstanceNodeInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取实例节点信息
    ///
    /// 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息
    @inlinable
    public func describeDCDBInstanceNodeInfo(_ input: DescribeDCDBInstanceNodeInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBInstanceNodeInfoResponse {
        try await self.client.execute(action: "DescribeDCDBInstanceNodeInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDCDBInstanceNodeInfo请求参数结构体
    public struct DescribeDCDBInstanceNodeInfoRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 单次最多返回多少条，取值范围为(0-100]，默认为100
        public let limit: UInt64?
        
        /// 返回数据的偏移值，默认为0
        public let offset: UInt64?
        
        public init (instanceId: String, limit: UInt64?, offset: UInt64?) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeDCDBInstanceNodeInfo返回参数结构体
    public struct DescribeDCDBInstanceNodeInfoResponse: TCResponseModel {
        /// 节点总个数
        public let totalCount: UInt64
        
        /// 节点信息
        public let nodesInfo: [BriefNodeInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case nodesInfo = "NodesInfo"
            case requestId = "RequestId"
        }
    }
}