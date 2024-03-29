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

import Logging
import NIOCore
import TecoCore

extension Cdn {
    /// CreateVerifyRecord请求参数结构体
    public struct CreateVerifyRecordRequest: TCRequest {
        /// 要取回的域名
        public let domain: String

        public init(domain: String) {
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
        }
    }

    /// CreateVerifyRecord返回参数结构体
    public struct CreateVerifyRecordResponse: TCResponse {
        /// 子解析
        public let subDomain: String

        /// 解析值
        public let record: String

        /// 解析类型
        public let recordType: String

        /// 文件验证 URL 指引
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileVerifyUrl: String?

        /// 文件校验域名列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileVerifyDomains: [String]?

        /// 文件校验文件名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileVerifyName: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subDomain = "SubDomain"
            case record = "Record"
            case recordType = "RecordType"
            case fileVerifyUrl = "FileVerifyUrl"
            case fileVerifyDomains = "FileVerifyDomains"
            case fileVerifyName = "FileVerifyName"
            case requestId = "RequestId"
        }
    }

    /// 生成解析记录
    ///
    /// CreateVerifyRecord 用于生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    /// 生成的解析记录可通过 [VerifyDomainRecord](https://cloud.tencent.com/document/product/228/48117) 完成归属权校验。
    /// 注意：生成的解析记录有效期为24小时，超过24小时后，需重新生成。
    /// 具体流程可参考：[使用API接口进行域名归属校验](https://cloud.tencent.com/document/product/228/61702#.E6.96.B9.E6.B3.95.E4.B8.89.EF.BC.9Aapi-.E6.8E.A5.E5.8F.A3.E6.93.8D.E4.BD.9C)
    @inlinable
    public func createVerifyRecord(_ input: CreateVerifyRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVerifyRecordResponse> {
        self.client.execute(action: "CreateVerifyRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成解析记录
    ///
    /// CreateVerifyRecord 用于生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    /// 生成的解析记录可通过 [VerifyDomainRecord](https://cloud.tencent.com/document/product/228/48117) 完成归属权校验。
    /// 注意：生成的解析记录有效期为24小时，超过24小时后，需重新生成。
    /// 具体流程可参考：[使用API接口进行域名归属校验](https://cloud.tencent.com/document/product/228/61702#.E6.96.B9.E6.B3.95.E4.B8.89.EF.BC.9Aapi-.E6.8E.A5.E5.8F.A3.E6.93.8D.E4.BD.9C)
    @inlinable
    public func createVerifyRecord(_ input: CreateVerifyRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVerifyRecordResponse {
        try await self.client.execute(action: "CreateVerifyRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成解析记录
    ///
    /// CreateVerifyRecord 用于生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    /// 生成的解析记录可通过 [VerifyDomainRecord](https://cloud.tencent.com/document/product/228/48117) 完成归属权校验。
    /// 注意：生成的解析记录有效期为24小时，超过24小时后，需重新生成。
    /// 具体流程可参考：[使用API接口进行域名归属校验](https://cloud.tencent.com/document/product/228/61702#.E6.96.B9.E6.B3.95.E4.B8.89.EF.BC.9Aapi-.E6.8E.A5.E5.8F.A3.E6.93.8D.E4.BD.9C)
    @inlinable
    public func createVerifyRecord(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVerifyRecordResponse> {
        self.createVerifyRecord(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 生成解析记录
    ///
    /// CreateVerifyRecord 用于生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    /// 生成的解析记录可通过 [VerifyDomainRecord](https://cloud.tencent.com/document/product/228/48117) 完成归属权校验。
    /// 注意：生成的解析记录有效期为24小时，超过24小时后，需重新生成。
    /// 具体流程可参考：[使用API接口进行域名归属校验](https://cloud.tencent.com/document/product/228/61702#.E6.96.B9.E6.B3.95.E4.B8.89.EF.BC.9Aapi-.E6.8E.A5.E5.8F.A3.E6.93.8D.E4.BD.9C)
    @inlinable
    public func createVerifyRecord(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVerifyRecordResponse {
        try await self.createVerifyRecord(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }
}
