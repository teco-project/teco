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

extension Iotcloud {
    /// DescribeProductCA请求参数结构体
    public struct DescribeProductCARequest: TCRequestModel {
        /// 产品ID
        public let productId: String

        public init(productId: String) {
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
        }
    }

    /// DescribeProductCA返回参数结构体
    public struct DescribeProductCAResponse: TCResponseModel {
        /// CA证书列表
        public let cAs: [CertInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cAs = "CAs"
            case requestId = "RequestId"
        }
    }

    /// 查询产品绑定的CA证书
    @inlinable
    public func describeProductCA(_ input: DescribeProductCARequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProductCAResponse > {
        self.client.execute(action: "DescribeProductCA", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询产品绑定的CA证书
    @inlinable
    public func describeProductCA(_ input: DescribeProductCARequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductCAResponse {
        try await self.client.execute(action: "DescribeProductCA", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询产品绑定的CA证书
    @inlinable
    public func describeProductCA(productId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeProductCAResponse > {
        self.describeProductCA(DescribeProductCARequest(productId: productId), logger: logger, on: eventLoop)
    }

    /// 查询产品绑定的CA证书
    @inlinable
    public func describeProductCA(productId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProductCAResponse {
        try await self.describeProductCA(DescribeProductCARequest(productId: productId), logger: logger, on: eventLoop)
    }
}
