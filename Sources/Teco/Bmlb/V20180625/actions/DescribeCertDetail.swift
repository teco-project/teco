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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Bmlb {
    /// DescribeCertDetail请求参数结构体
    public struct DescribeCertDetailRequest: TCRequest {
        /// 证书ID。
        public let certId: String

        public init(certId: String) {
            self.certId = certId
        }

        enum CodingKeys: String, CodingKey {
            case certId = "CertId"
        }
    }

    /// DescribeCertDetail返回参数结构体
    public struct DescribeCertDetailResponse: TCResponse {
        /// 证书ID。
        public let certId: String

        /// 证书名称。
        public let certName: String

        /// 证书类型（SVR=服务器证书，CA=客户端证书）。
        public let certType: String

        /// 证书内容。
        public let certContent: String

        /// 证书主域名。
        public let certDomain: String

        /// 证书子域名列表。
        public let certSubjectDomain: [String]

        /// 证书上传时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$certUploadTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var certUploadTime: Date

        /// 证书生效时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$certBeginTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var certBeginTime: Date

        /// 证书失效时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$certEndTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var certEndTime: Date

        /// 该证书关联的黑石负载均衡对象列表。
        public let certLoadBalancerSet: [CertDetailLoadBalancer]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certId = "CertId"
            case certName = "CertName"
            case certType = "CertType"
            case certContent = "CertContent"
            case certDomain = "CertDomain"
            case certSubjectDomain = "CertSubjectDomain"
            case certUploadTime = "CertUploadTime"
            case certBeginTime = "CertBeginTime"
            case certEndTime = "CertEndTime"
            case certLoadBalancerSet = "CertLoadBalancerSet"
            case requestId = "RequestId"
        }
    }

    /// 获取黑石负载均衡证书详情
    ///
    /// 获取黑石负载均衡证书详情。
    @inlinable
    public func describeCertDetail(_ input: DescribeCertDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertDetailResponse> {
        self.client.execute(action: "DescribeCertDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取黑石负载均衡证书详情
    ///
    /// 获取黑石负载均衡证书详情。
    @inlinable
    public func describeCertDetail(_ input: DescribeCertDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertDetailResponse {
        try await self.client.execute(action: "DescribeCertDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取黑石负载均衡证书详情
    ///
    /// 获取黑石负载均衡证书详情。
    @inlinable
    public func describeCertDetail(certId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertDetailResponse> {
        self.describeCertDetail(.init(certId: certId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取黑石负载均衡证书详情
    ///
    /// 获取黑石负载均衡证书详情。
    @inlinable
    public func describeCertDetail(certId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertDetailResponse {
        try await self.describeCertDetail(.init(certId: certId), region: region, logger: logger, on: eventLoop)
    }
}
