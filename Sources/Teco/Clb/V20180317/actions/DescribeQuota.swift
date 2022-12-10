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

extension Clb {
    /// 查询配额
    ///
    /// 查询用户当前地域下的各项配额
    @inlinable
    public func describeQuota(_ input: DescribeQuotaRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeQuotaResponse > {
        self.client.execute(action: "DescribeQuota", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询配额
    ///
    /// 查询用户当前地域下的各项配额
    @inlinable
    public func describeQuota(_ input: DescribeQuotaRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQuotaResponse {
        try await self.client.execute(action: "DescribeQuota", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeQuota请求参数结构体
    public struct DescribeQuotaRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeQuota返回参数结构体
    public struct DescribeQuotaResponse: TCResponseModel {
        /// 配额列表
        public let quotaSet: [Quota]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case quotaSet = "QuotaSet"
            case requestId = "RequestId"
        }
    }
}
