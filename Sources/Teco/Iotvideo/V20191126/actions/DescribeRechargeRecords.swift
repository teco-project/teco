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

extension Iotvideo {
    /// 查询充值记录
    ///
    /// 客户可通过本接口获取充值记录信息, 一次最多返回50条记录。
    @inlinable
    public func describeRechargeRecords(_ input: DescribeRechargeRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRechargeRecordsResponse > {
        self.client.execute(action: "DescribeRechargeRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询充值记录
    ///
    /// 客户可通过本接口获取充值记录信息, 一次最多返回50条记录。
    @inlinable
    public func describeRechargeRecords(_ input: DescribeRechargeRecordsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRechargeRecordsResponse {
        try await self.client.execute(action: "DescribeRechargeRecords", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeRechargeRecords请求参数结构体
    public struct DescribeRechargeRecordsRequest: TCRequestModel {
        /// 账户类型 1:设备接入 2:云存。
        public let accountType: Int64
        
        /// 从第几条记录开始显示, 默认值为0。
        public let offset: Int64?
        
        /// 总共查询多少条记录，默认为值50。
        public let limit: Int64?
        
        public init (accountType: Int64, offset: Int64?, limit: Int64?) {
            self.accountType = accountType
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeRechargeRecords返回参数结构体
    public struct DescribeRechargeRecordsResponse: TCResponseModel {
        /// 账户类型 1:设备接入 2:云存
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountType: Int64?
        
        /// 充值记录列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let records: [RechargeRecord]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
            case records = "Records"
            case requestId = "RequestId"
        }
    }
}
