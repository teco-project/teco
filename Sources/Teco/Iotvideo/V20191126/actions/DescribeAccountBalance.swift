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
    /// DescribeAccountBalance请求参数结构体
    public struct DescribeAccountBalanceRequest: TCRequestModel {
        /// 账户类型 1:设备接入 2:云存
        public let accountType: Int64
        
        public init (accountType: Int64) {
            self.accountType = accountType
        }
        
        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
        }
    }
    
    /// DescribeAccountBalance返回参数结构体
    public struct DescribeAccountBalanceResponse: TCResponseModel {
        /// 账户类型 1=设备接入;2=云存。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountType: Int64?
        
        /// 余额, 单位 : 分(人民币)。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let balance: Int64?
        
        /// 账户状态，1=正常；8=冻结；9=销户。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let state: Int64?
        
        /// 最后修改时间，UTC值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastUpdateTime: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
            case balance = "Balance"
            case state = "State"
            case lastUpdateTime = "LastUpdateTime"
            case requestId = "RequestId"
        }
    }
    
    /// 查询账户余额
    ///
    /// 客户可通过本接口获取账户余额信息, 默认接口请求频率限制：1次/秒
    @inlinable
    public func describeAccountBalance(_ input: DescribeAccountBalanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccountBalanceResponse > {
        self.client.execute(action: "DescribeAccountBalance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询账户余额
    ///
    /// 客户可通过本接口获取账户余额信息, 默认接口请求频率限制：1次/秒
    @inlinable
    public func describeAccountBalance(_ input: DescribeAccountBalanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountBalanceResponse {
        try await self.client.execute(action: "DescribeAccountBalance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
