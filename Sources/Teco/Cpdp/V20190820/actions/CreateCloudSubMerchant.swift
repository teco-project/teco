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

extension Cpdp {
    /// CreateCloudSubMerchant请求参数结构体
    public struct CreateCloudSubMerchantRequest: TCRequestModel {
        /// 米大师分配的支付主MidasAppId，根应用Id。
        public let midasAppId: String

        /// 父应用Id。
        public let parentAppId: String

        /// 子商户名。
        public let subMchName: String

        /// 子商户描述。
        public let subMchDescription: String

        /// 环境类型
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let midasEnvironment: String?

        /// 子应用Id，为空则自动创建子应用id。
        public let subAppId: String?

        /// 子商户名缩写。
        public let subMchShortName: String?

        /// 业务平台自定义的子商户Id，唯一。
        public let outSubMerchantId: String?

        public init(midasAppId: String, parentAppId: String, subMchName: String, subMchDescription: String, midasEnvironment: String? = nil, subAppId: String? = nil, subMchShortName: String? = nil, outSubMerchantId: String? = nil) {
            self.midasAppId = midasAppId
            self.parentAppId = parentAppId
            self.subMchName = subMchName
            self.subMchDescription = subMchDescription
            self.midasEnvironment = midasEnvironment
            self.subAppId = subAppId
            self.subMchShortName = subMchShortName
            self.outSubMerchantId = outSubMerchantId
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case parentAppId = "ParentAppId"
            case subMchName = "SubMchName"
            case subMchDescription = "SubMchDescription"
            case midasEnvironment = "MidasEnvironment"
            case subAppId = "SubAppId"
            case subMchShortName = "SubMchShortName"
            case outSubMerchantId = "OutSubMerchantId"
        }
    }

    /// CreateCloudSubMerchant返回参数结构体
    public struct CreateCloudSubMerchantResponse: TCResponseModel {
        /// 子应用ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subAppId: String?

        /// 渠道子商户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let channelSubMerchantId: String?

        /// 层级，从0开始
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let level: Int64?

        /// 渠道应用ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let channelAppId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case channelSubMerchantId = "ChannelSubMerchantId"
            case level = "Level"
            case channelAppId = "ChannelAppId"
            case requestId = "RequestId"
        }
    }

    /// 聚鑫V2-创建子商户
    ///
    /// 创建子商户
    @inlinable
    public func createCloudSubMerchant(_ input: CreateCloudSubMerchantRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudSubMerchantResponse> {
        self.client.execute(action: "CreateCloudSubMerchant", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫V2-创建子商户
    ///
    /// 创建子商户
    @inlinable
    public func createCloudSubMerchant(_ input: CreateCloudSubMerchantRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudSubMerchantResponse {
        try await self.client.execute(action: "CreateCloudSubMerchant", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫V2-创建子商户
    ///
    /// 创建子商户
    @inlinable
    public func createCloudSubMerchant(midasAppId: String, parentAppId: String, subMchName: String, subMchDescription: String, midasEnvironment: String? = nil, subAppId: String? = nil, subMchShortName: String? = nil, outSubMerchantId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudSubMerchantResponse> {
        self.createCloudSubMerchant(.init(midasAppId: midasAppId, parentAppId: parentAppId, subMchName: subMchName, subMchDescription: subMchDescription, midasEnvironment: midasEnvironment, subAppId: subAppId, subMchShortName: subMchShortName, outSubMerchantId: outSubMerchantId), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫V2-创建子商户
    ///
    /// 创建子商户
    @inlinable
    public func createCloudSubMerchant(midasAppId: String, parentAppId: String, subMchName: String, subMchDescription: String, midasEnvironment: String? = nil, subAppId: String? = nil, subMchShortName: String? = nil, outSubMerchantId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudSubMerchantResponse {
        try await self.createCloudSubMerchant(.init(midasAppId: midasAppId, parentAppId: parentAppId, subMchName: subMchName, subMchDescription: subMchDescription, midasEnvironment: midasEnvironment, subAppId: subAppId, subMchShortName: subMchShortName, outSubMerchantId: outSubMerchantId), region: region, logger: logger, on: eventLoop)
    }
}
