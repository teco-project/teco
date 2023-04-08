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

extension Btoe {
    /// GetDepositCert请求参数结构体
    public struct GetDepositCertRequest: TCRequestModel {
        /// 存证编码
        public let evidenceId: String

        public init(evidenceId: String) {
            self.evidenceId = evidenceId
        }

        enum CodingKeys: String, CodingKey {
            case evidenceId = "EvidenceId"
        }
    }

    /// GetDepositCert返回参数结构体
    public struct GetDepositCertResponse: TCResponseModel {
        /// 存证编码
        public let evidenceId: String

        /// 存证证书文件临时链接
        public let evidenceCert: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case evidenceId = "EvidenceId"
            case evidenceCert = "EvidenceCert"
            case requestId = "RequestId"
        }
    }

    /// BTOE存证电子凭证查询
    ///
    /// 用户通过存证编码向BTOE查询存证电子凭证信息。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func getDepositCert(_ input: GetDepositCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDepositCertResponse> {
        fatalError("GetDepositCert is no longer available.")
    }

    /// BTOE存证电子凭证查询
    ///
    /// 用户通过存证编码向BTOE查询存证电子凭证信息。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func getDepositCert(_ input: GetDepositCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDepositCertResponse {
        fatalError("GetDepositCert is no longer available.")
    }

    /// BTOE存证电子凭证查询
    ///
    /// 用户通过存证编码向BTOE查询存证电子凭证信息。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func getDepositCert(evidenceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDepositCertResponse> {
        fatalError("GetDepositCert is no longer available.")
    }

    /// BTOE存证电子凭证查询
    ///
    /// 用户通过存证编码向BTOE查询存证电子凭证信息。
    @available(*, unavailable, message: "功能迭代，已上线更高版本的接口2021-05-14")
    @inlinable
    public func getDepositCert(evidenceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDepositCertResponse {
        fatalError("GetDepositCert is no longer available.")
    }
}
