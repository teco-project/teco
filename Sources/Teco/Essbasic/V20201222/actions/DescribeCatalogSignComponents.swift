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

extension Essbasic {
    /// DescribeCatalogSignComponents请求参数结构体
    public struct DescribeCatalogSignComponentsRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 目录ID
        public let catalogId: String

        public init(caller: Caller, catalogId: String) {
            self.caller = caller
            self.catalogId = catalogId
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case catalogId = "CatalogId"
        }
    }

    /// DescribeCatalogSignComponents返回参数结构体
    public struct DescribeCatalogSignComponentsResponse: TCResponseModel {
        /// 签署区列表
        public let signComponents: [CatalogComponents]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case signComponents = "SignComponents"
            case requestId = "RequestId"
        }
    }

    /// 拉取目录签署区
    ///
    /// 第三方应用可通过此接口（DescribeCatalogSignComponents）拉取目录签署区
    @inlinable
    public func describeCatalogSignComponents(_ input: DescribeCatalogSignComponentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCatalogSignComponentsResponse > {
        self.client.execute(action: "DescribeCatalogSignComponents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取目录签署区
    ///
    /// 第三方应用可通过此接口（DescribeCatalogSignComponents）拉取目录签署区
    @inlinable
    public func describeCatalogSignComponents(_ input: DescribeCatalogSignComponentsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCatalogSignComponentsResponse {
        try await self.client.execute(action: "DescribeCatalogSignComponents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取目录签署区
    ///
    /// 第三方应用可通过此接口（DescribeCatalogSignComponents）拉取目录签署区
    @inlinable
    public func describeCatalogSignComponents(caller: Caller, catalogId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCatalogSignComponentsResponse > {
        self.describeCatalogSignComponents(DescribeCatalogSignComponentsRequest(caller: caller, catalogId: catalogId), logger: logger, on: eventLoop)
    }

    /// 拉取目录签署区
    ///
    /// 第三方应用可通过此接口（DescribeCatalogSignComponents）拉取目录签署区
    @inlinable
    public func describeCatalogSignComponents(caller: Caller, catalogId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCatalogSignComponentsResponse {
        try await self.describeCatalogSignComponents(DescribeCatalogSignComponentsRequest(caller: caller, catalogId: catalogId), logger: logger, on: eventLoop)
    }
}
