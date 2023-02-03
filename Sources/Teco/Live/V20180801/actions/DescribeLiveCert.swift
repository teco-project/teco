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

extension Live {
    /// DescribeLiveCert请求参数结构体
    public struct DescribeLiveCertRequest: TCRequestModel {
        /// DescribeLiveCerts接口获取到的证书Id。
        public let certId: Int64

        public init(certId: Int64) {
            self.certId = certId
        }

        enum CodingKeys: String, CodingKey {
            case certId = "CertId"
        }
    }

    /// DescribeLiveCert返回参数结构体
    public struct DescribeLiveCertResponse: TCResponseModel {
        /// 证书信息。
        public let certInfo: CertInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certInfo = "CertInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取证书信息
    @inlinable
    public func describeLiveCert(_ input: DescribeLiveCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveCertResponse> {
        self.client.execute(action: "DescribeLiveCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取证书信息
    @inlinable
    public func describeLiveCert(_ input: DescribeLiveCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveCertResponse {
        try await self.client.execute(action: "DescribeLiveCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取证书信息
    @inlinable
    public func describeLiveCert(certId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveCertResponse> {
        let input = DescribeLiveCertRequest(certId: certId)
        return self.client.execute(action: "DescribeLiveCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取证书信息
    @inlinable
    public func describeLiveCert(certId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveCertResponse {
        let input = DescribeLiveCertRequest(certId: certId)
        return try await self.client.execute(action: "DescribeLiveCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
