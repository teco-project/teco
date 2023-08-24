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

extension Ecdn {
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

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subDomain = "SubDomain"
            case record = "Record"
            case recordType = "RecordType"
            case requestId = "RequestId"
        }
    }

    /// 生成解析记录
    ///
    /// 生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    ///
    /// > Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/48118)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func createVerifyRecord(_ input: CreateVerifyRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVerifyRecordResponse> {
        fatalError("CreateVerifyRecord is no longer available.")
    }

    /// 生成解析记录
    ///
    /// 生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    ///
    /// > Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/48118)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func createVerifyRecord(_ input: CreateVerifyRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVerifyRecordResponse {
        fatalError("CreateVerifyRecord is no longer available.")
    }

    /// 生成解析记录
    ///
    /// 生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    ///
    /// > Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/48118)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func createVerifyRecord(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVerifyRecordResponse> {
        fatalError("CreateVerifyRecord is no longer available.")
    }

    /// 生成解析记录
    ///
    /// 生成一条子域名解析，提示客户添加到域名解析上，用于泛域名及域名取回校验归属权。
    ///
    /// > Attention: 若您的业务已迁移至 CDN 控制台，请参考[ CDN 接口文档](https://cloud.tencent.com/document/api/228/48118)，使用  CDN 相关API 进行操作。
    @available(*, unavailable, message: "ECDN融合CDN后，接口都用CDN的，此接口已经废弃")
    @inlinable
    public func createVerifyRecord(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVerifyRecordResponse {
        fatalError("CreateVerifyRecord is no longer available.")
    }
}
