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

extension Vpc {
    /// CreateCcn请求参数结构体
    public struct CreateCcnRequest: TCRequestModel {
        /// CCN名称，最大长度不能超过60个字节。
        public let ccnName: String

        /// CCN描述信息，最大长度不能超过100个字节。
        public let ccnDescription: String?

        /// CCN服务质量，`PT`：白金，`AU`：金，`AG`：银，默认为`AU`。
        public let qosLevel: String?

        /// 计费模式，`PREPAID`：表示预付费，即包年包月，`POSTPAID`：表示后付费，即按量计费。默认：`POSTPAID`。
        public let instanceChargeType: String?

        /// 限速类型，`OUTER_REGION_LIMIT`表示地域出口限速，`INTER_REGION_LIMIT`为地域间限速，默认为`OUTER_REGION_LIMIT`。预付费模式仅支持地域间限速，后付费模式支持地域间限速和地域出口限速。
        public let bandwidthLimitType: String?

        /// 指定绑定的标签列表，例如：[{"Key": "city", "Value": "shanghai"}]
        public let tags: [Tag]?

        public init(ccnName: String, ccnDescription: String? = nil, qosLevel: String? = nil, instanceChargeType: String? = nil, bandwidthLimitType: String? = nil, tags: [Tag]? = nil) {
            self.ccnName = ccnName
            self.ccnDescription = ccnDescription
            self.qosLevel = qosLevel
            self.instanceChargeType = instanceChargeType
            self.bandwidthLimitType = bandwidthLimitType
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case ccnName = "CcnName"
            case ccnDescription = "CcnDescription"
            case qosLevel = "QosLevel"
            case instanceChargeType = "InstanceChargeType"
            case bandwidthLimitType = "BandwidthLimitType"
            case tags = "Tags"
        }
    }

    /// CreateCcn返回参数结构体
    public struct CreateCcnResponse: TCResponseModel {
        /// 云联网（CCN）对象。
        public let ccn: CCN

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ccn = "Ccn"
            case requestId = "RequestId"
        }
    }

    /// 创建CCN
    ///
    /// 本接口（CreateCcn）用于创建云联网（CCN）。<br />
    /// * 创建云联网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// * 每个账号能创建的云联网实例个数是有限的，详请参考产品文档。如果需要扩充请联系在线客服。
    @inlinable
    public func createCcn(_ input: CreateCcnRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCcnResponse> {
        self.client.execute(action: "CreateCcn", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建CCN
    ///
    /// 本接口（CreateCcn）用于创建云联网（CCN）。<br />
    /// * 创建云联网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// * 每个账号能创建的云联网实例个数是有限的，详请参考产品文档。如果需要扩充请联系在线客服。
    @inlinable
    public func createCcn(_ input: CreateCcnRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCcnResponse {
        try await self.client.execute(action: "CreateCcn", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建CCN
    ///
    /// 本接口（CreateCcn）用于创建云联网（CCN）。<br />
    /// * 创建云联网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// * 每个账号能创建的云联网实例个数是有限的，详请参考产品文档。如果需要扩充请联系在线客服。
    @inlinable
    public func createCcn(ccnName: String, ccnDescription: String? = nil, qosLevel: String? = nil, instanceChargeType: String? = nil, bandwidthLimitType: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCcnResponse> {
        self.createCcn(.init(ccnName: ccnName, ccnDescription: ccnDescription, qosLevel: qosLevel, instanceChargeType: instanceChargeType, bandwidthLimitType: bandwidthLimitType, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建CCN
    ///
    /// 本接口（CreateCcn）用于创建云联网（CCN）。<br />
    /// * 创建云联网同时可以绑定标签, 应答里的标签列表代表添加成功的标签。
    /// * 每个账号能创建的云联网实例个数是有限的，详请参考产品文档。如果需要扩充请联系在线客服。
    @inlinable
    public func createCcn(ccnName: String, ccnDescription: String? = nil, qosLevel: String? = nil, instanceChargeType: String? = nil, bandwidthLimitType: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCcnResponse {
        try await self.createCcn(.init(ccnName: ccnName, ccnDescription: ccnDescription, qosLevel: qosLevel, instanceChargeType: instanceChargeType, bandwidthLimitType: bandwidthLimitType, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
