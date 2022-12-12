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

extension Cam {
    /// DescribeSubAccounts请求参数结构体
    public struct DescribeSubAccountsRequest: TCRequestModel {
        /// 子用户UIN列表，最多支持50个UIN
        public let filterSubAccountUin: [UInt64]
        
        public init (filterSubAccountUin: [UInt64]) {
            self.filterSubAccountUin = filterSubAccountUin
        }
        
        enum CodingKeys: String, CodingKey {
            case filterSubAccountUin = "FilterSubAccountUin"
        }
    }
    
    /// DescribeSubAccounts返回参数结构体
    public struct DescribeSubAccountsResponse: TCResponseModel {
        /// 子用户列表
        public let subAccounts: [SubAccountUser]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case subAccounts = "SubAccounts"
            case requestId = "RequestId"
        }
    }
    
    /// 通过子用户UIN列表查询子用户
    @inlinable
    public func describeSubAccounts(_ input: DescribeSubAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSubAccountsResponse > {
        self.client.execute(action: "DescribeSubAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 通过子用户UIN列表查询子用户
    @inlinable
    public func describeSubAccounts(_ input: DescribeSubAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubAccountsResponse {
        try await self.client.execute(action: "DescribeSubAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
