//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Gaap {
    /// DescribeCertificates请求参数结构体
    public struct DescribeCertificatesRequest: TCRequestModel {
        /// 证书类型。其中：
        /// 0，表示基础认证配置；
        /// 1，表示客户端CA证书；
        /// 2，表示服务器SSL证书；
        /// 3，表示源站CA证书；
        /// 4，表示通道SSL证书。
        /// -1，所有类型。
        /// 默认为-1。
        public let certificateType: Int64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 限制数量，默认为20。
        public let limit: UInt64?

        public init(certificateType: Int64? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.certificateType = certificateType
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case certificateType = "CertificateType"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeCertificates返回参数结构体
    public struct DescribeCertificatesResponse: TCResponseModel {
        /// 服务器证书列表，包括证书ID 和证书名称。
        public let certificateSet: [Certificate]

        /// 满足查询条件的服务器证书总数量。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certificateSet = "CertificateSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询服务器证书列表
    ///
    /// 本接口（DescribeCertificates）用来查询可以使用的证书列表。
    @inlinable
    public func describeCertificates(_ input: DescribeCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificatesResponse> {
        self.client.execute(action: "DescribeCertificates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务器证书列表
    ///
    /// 本接口（DescribeCertificates）用来查询可以使用的证书列表。
    @inlinable
    public func describeCertificates(_ input: DescribeCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificatesResponse {
        try await self.client.execute(action: "DescribeCertificates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务器证书列表
    ///
    /// 本接口（DescribeCertificates）用来查询可以使用的证书列表。
    @inlinable
    public func describeCertificates(certificateType: Int64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificatesResponse> {
        self.describeCertificates(DescribeCertificatesRequest(certificateType: certificateType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务器证书列表
    ///
    /// 本接口（DescribeCertificates）用来查询可以使用的证书列表。
    @inlinable
    public func describeCertificates(certificateType: Int64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificatesResponse {
        try await self.describeCertificates(DescribeCertificatesRequest(certificateType: certificateType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
