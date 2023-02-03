//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Antiddos {
    /// CreateSchedulingDomain请求参数结构体
    public struct CreateSchedulingDomainRequest: TCRequestModel {
        /// 代表是否混合云本地化的产品。
        /// hybrid: 宙斯盾本地化
        /// 不填写：其他
        public let product: String?

        public init(product: String? = nil) {
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
        }
    }

    /// CreateSchedulingDomain返回参数结构体
    public struct CreateSchedulingDomainResponse: TCResponseModel {
        /// 新创建的域名
        public let domain: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case requestId = "RequestId"
        }
    }

    /// 创建调度的域名
    ///
    /// 创建一个域名，可用于在封堵时调度切换IP
    @inlinable
    public func createSchedulingDomain(_ input: CreateSchedulingDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchedulingDomainResponse> {
        self.client.execute(action: "CreateSchedulingDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建调度的域名
    ///
    /// 创建一个域名，可用于在封堵时调度切换IP
    @inlinable
    public func createSchedulingDomain(_ input: CreateSchedulingDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSchedulingDomainResponse {
        try await self.client.execute(action: "CreateSchedulingDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建调度的域名
    ///
    /// 创建一个域名，可用于在封堵时调度切换IP
    @inlinable
    public func createSchedulingDomain(product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSchedulingDomainResponse> {
        let input = CreateSchedulingDomainRequest(product: product)
        return self.client.execute(action: "CreateSchedulingDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建调度的域名
    ///
    /// 创建一个域名，可用于在封堵时调度切换IP
    @inlinable
    public func createSchedulingDomain(product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSchedulingDomainResponse {
        let input = CreateSchedulingDomainRequest(product: product)
        return try await self.client.execute(action: "CreateSchedulingDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
