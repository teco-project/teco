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

extension Bma {
    /// CreateBPOfflineAttachment请求参数结构体
    public struct CreateBPOfflineAttachmentRequest: TCRequestModel {
        /// 品牌名字
        public let brandName: String?

        /// 商标证明
        public let brandCertificateName: String?

        /// 商标转让证明
        public let transferName: String?

        /// 授权书
        public let authorizationName: String?

        public init(brandName: String? = nil, brandCertificateName: String? = nil, transferName: String? = nil, authorizationName: String? = nil) {
            self.brandName = brandName
            self.brandCertificateName = brandCertificateName
            self.transferName = transferName
            self.authorizationName = authorizationName
        }

        enum CodingKeys: String, CodingKey {
            case brandName = "BrandName"
            case brandCertificateName = "BrandCertificateName"
            case transferName = "TransferName"
            case authorizationName = "AuthorizationName"
        }
    }

    /// CreateBPOfflineAttachment返回参数结构体
    public struct CreateBPOfflineAttachmentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加下线材料
    @inlinable @discardableResult
    public func createBPOfflineAttachment(_ input: CreateBPOfflineAttachmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBPOfflineAttachmentResponse> {
        self.client.execute(action: "CreateBPOfflineAttachment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加下线材料
    @inlinable @discardableResult
    public func createBPOfflineAttachment(_ input: CreateBPOfflineAttachmentRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPOfflineAttachmentResponse {
        try await self.client.execute(action: "CreateBPOfflineAttachment", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加下线材料
    @inlinable @discardableResult
    public func createBPOfflineAttachment(brandName: String? = nil, brandCertificateName: String? = nil, transferName: String? = nil, authorizationName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBPOfflineAttachmentResponse> {
        self.createBPOfflineAttachment(CreateBPOfflineAttachmentRequest(brandName: brandName, brandCertificateName: brandCertificateName, transferName: transferName, authorizationName: authorizationName), region: region, logger: logger, on: eventLoop)
    }

    /// 添加下线材料
    @inlinable @discardableResult
    public func createBPOfflineAttachment(brandName: String? = nil, brandCertificateName: String? = nil, transferName: String? = nil, authorizationName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPOfflineAttachmentResponse {
        try await self.createBPOfflineAttachment(CreateBPOfflineAttachmentRequest(brandName: brandName, brandCertificateName: brandCertificateName, transferName: transferName, authorizationName: authorizationName), region: region, logger: logger, on: eventLoop)
    }
}
