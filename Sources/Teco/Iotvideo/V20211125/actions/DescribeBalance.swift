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

extension Iotvideo {
    /// 查询账户余额
    ///
    /// 查询账户余额
    @inlinable
    public func describeBalance(_ input: DescribeBalanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBalanceResponse > {
        self.client.execute(action: "DescribeBalance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询账户余额
    ///
    /// 查询账户余额
    @inlinable
    public func describeBalance(_ input: DescribeBalanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBalanceResponse {
        try await self.client.execute(action: "DescribeBalance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBalance请求参数结构体
    public struct DescribeBalanceRequest: TCRequestModel {
        /// 账户类型：1-设备接入；2-云存。
        public let accountType: UInt64
        
        public init (accountType: UInt64) {
            self.accountType = accountType
        }
        
        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
        }
    }
    
    /// DescribeBalance返回参数结构体
    public struct DescribeBalanceResponse: TCResponseModel {
        /// 账户余额，单位：分（人民币）。
        public let balance: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case balance = "Balance"
            case requestId = "RequestId"
        }
    }
}