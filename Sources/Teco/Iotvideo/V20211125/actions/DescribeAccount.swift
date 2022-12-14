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
    /// DescribeAccount请求参数结构体
    public struct DescribeAccountRequest: TCRequestModel {
        /// 1设备，2云存，3ai
        public let accountType: UInt64

        public init(accountType: UInt64) {
            self.accountType = accountType
        }

        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
        }
    }

    /// DescribeAccount返回参数结构体
    public struct DescribeAccountResponse: TCResponseModel {
        /// 查询的账号id
        public let uin: String

        /// 1线上计费，2线下计费
        public let billType: UInt64

        /// 0未定义，1按套餐预付费，2按量后付费
        public let billMode: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case billType = "BillType"
            case billMode = "BillMode"
            case requestId = "RequestId"
        }
    }

    /// 获取消费版账号信息
    @inlinable
    public func describeAccount(_ input: DescribeAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccountResponse > {
        self.client.execute(action: "DescribeAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取消费版账号信息
    @inlinable
    public func describeAccount(_ input: DescribeAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountResponse {
        try await self.client.execute(action: "DescribeAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取消费版账号信息
    @inlinable
    public func describeAccount(accountType: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAccountResponse > {
        self.describeAccount(DescribeAccountRequest(accountType: accountType), logger: logger, on: eventLoop)
    }

    /// 获取消费版账号信息
    @inlinable
    public func describeAccount(accountType: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountResponse {
        try await self.describeAccount(DescribeAccountRequest(accountType: accountType), logger: logger, on: eventLoop)
    }
}
