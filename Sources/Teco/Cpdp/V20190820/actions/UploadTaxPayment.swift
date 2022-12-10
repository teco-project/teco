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

extension Cpdp {
    /// 直播平台-上传代理商完税证明
    @inlinable
    public func uploadTaxPayment(_ input: UploadTaxPaymentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UploadTaxPaymentResponse > {
        self.client.execute(action: "UploadTaxPayment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 直播平台-上传代理商完税证明
    @inlinable
    public func uploadTaxPayment(_ input: UploadTaxPaymentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadTaxPaymentResponse {
        try await self.client.execute(action: "UploadTaxPayment", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UploadTaxPayment请求参数结构体
    public struct UploadTaxPaymentRequest: TCRequestModel {
        /// 平台渠道
        public let channel: Int64
        
        /// 完税ID
        public let taxId: String
        
        /// 完税列表下载地址
        public let fileUrl: String
        
        public init (channel: Int64, taxId: String, fileUrl: String) {
            self.channel = channel
            self.taxId = taxId
            self.fileUrl = fileUrl
        }
        
        enum CodingKeys: String, CodingKey {
            case channel = "Channel"
            case taxId = "TaxId"
            case fileUrl = "FileUrl"
        }
    }
    
    /// UploadTaxPayment返回参数结构体
    public struct UploadTaxPaymentResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
