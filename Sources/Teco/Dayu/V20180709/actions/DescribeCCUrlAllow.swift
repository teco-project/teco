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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Dayu {
    /// DescribeCCUrlAllow请求参数结构体
    public struct DescribeCCUrlAllowRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 黑或白名单，取值[white(白名单)]，目前只支持白名单
        /// 注意：此数组只能有一个值，且只能为white
        public let type: [String]

        /// 分页参数
        public let limit: UInt64?

        /// 分页参数
        public let offset: UInt64?

        /// 可选，代表HTTP协议或HTTPS协议的CC防护，取值[http（HTTP协议的CC防护），https（HTTPS协议的CC防护）]；
        public let `protocol`: String?

        public init(business: String, id: String, type: [String], limit: UInt64? = nil, offset: UInt64? = nil, protocol: String? = nil) {
            self.business = business
            self.id = id
            self.type = type
            self.limit = limit
            self.offset = offset
            self.protocol = `protocol`
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case type = "Type"
            case limit = "Limit"
            case offset = "Offset"
            case `protocol` = "Protocol"
        }
    }

    /// DescribeCCUrlAllow返回参数结构体
    public struct DescribeCCUrlAllowResponse: TCResponseModel {
        /// 该字段被RecordList字段替代了，请不要使用
        public let data: [KeyValue]

        /// 记录总数
        public let total: UInt64

        /// 返回黑/白名单的记录，
        /// "Key":"url"时，"Value":值表示URL;
        /// "Key":"domain"时， "Value":值表示域名;
        /// "Key":"type"时，"Value":值表示黑白名单类型(white为白名单，block为黑名单);
        /// "Key":"protocol"时，"Value":值表示CC的防护类型(HTTP防护或HTTPS域名防护);
        public let recordList: [KeyValueRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case total = "Total"
            case recordList = "RecordList"
            case requestId = "RequestId"
        }
    }

    /// 获取CC的Url白名单
    @inlinable
    public func describeCCUrlAllow(_ input: DescribeCCUrlAllowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCUrlAllowResponse> {
        self.client.execute(action: "DescribeCCUrlAllow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC的Url白名单
    @inlinable
    public func describeCCUrlAllow(_ input: DescribeCCUrlAllowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCUrlAllowResponse {
        try await self.client.execute(action: "DescribeCCUrlAllow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC的Url白名单
    @inlinable
    public func describeCCUrlAllow(business: String, id: String, type: [String], limit: UInt64? = nil, offset: UInt64? = nil, protocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCUrlAllowResponse> {
        self.describeCCUrlAllow(.init(business: business, id: id, type: type, limit: limit, offset: offset, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC的Url白名单
    @inlinable
    public func describeCCUrlAllow(business: String, id: String, type: [String], limit: UInt64? = nil, offset: UInt64? = nil, protocol: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCUrlAllowResponse {
        try await self.describeCCUrlAllow(.init(business: business, id: id, type: type, limit: limit, offset: offset, protocol: `protocol`), region: region, logger: logger, on: eventLoop)
    }
}
