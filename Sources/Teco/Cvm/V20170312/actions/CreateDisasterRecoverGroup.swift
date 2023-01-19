//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Cvm {
    /// CreateDisasterRecoverGroup请求参数结构体
    public struct CreateDisasterRecoverGroupRequest: TCRequestModel {
        /// 分散置放群组名称，长度1-60个字符，支持中、英文。
        public let name: String

        /// 分散置放群组类型，取值范围：<br><li>HOST：物理机<br><li>SW：交换机<br><li>RACK：机架
        public let type: String

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。<br>更多详细信息请参阅：如何保证幂等性。
        public let clientToken: String?

        public init(name: String, type: String, clientToken: String? = nil) {
            self.name = name
            self.type = type
            self.clientToken = clientToken
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case type = "Type"
            case clientToken = "ClientToken"
        }
    }

    /// CreateDisasterRecoverGroup返回参数结构体
    public struct CreateDisasterRecoverGroupResponse: TCResponseModel {
        /// 分散置放群组ID列表。
        public let disasterRecoverGroupId: String

        /// 分散置放群组类型，取值范围：<br><li>HOST：物理机<br><li>SW：交换机<br><li>RACK：机架
        public let type: String

        /// 分散置放群组名称，长度1-60个字符，支持中、英文。
        public let name: String

        /// 置放群组内可容纳的云服务器数量。
        public let cvmQuotaTotal: Int64

        /// 置放群组内已有的云服务器数量。
        public let currentNum: Int64

        /// 置放群组创建时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case disasterRecoverGroupId = "DisasterRecoverGroupId"
            case type = "Type"
            case name = "Name"
            case cvmQuotaTotal = "CvmQuotaTotal"
            case currentNum = "CurrentNum"
            case createTime = "CreateTime"
            case requestId = "RequestId"
        }
    }

    /// 创建分散置放群组
    ///
    /// 本接口 (CreateDisasterRecoverGroup)用于创建[分散置放群组](https://cloud.tencent.com/document/product/213/15486)。创建好的置放群组，可在[创建实例](https://cloud.tencent.com/document/api/213/15730)时指定。
    @inlinable
    public func createDisasterRecoverGroup(_ input: CreateDisasterRecoverGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDisasterRecoverGroupResponse> {
        self.client.execute(action: "CreateDisasterRecoverGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建分散置放群组
    ///
    /// 本接口 (CreateDisasterRecoverGroup)用于创建[分散置放群组](https://cloud.tencent.com/document/product/213/15486)。创建好的置放群组，可在[创建实例](https://cloud.tencent.com/document/api/213/15730)时指定。
    @inlinable
    public func createDisasterRecoverGroup(_ input: CreateDisasterRecoverGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDisasterRecoverGroupResponse {
        try await self.client.execute(action: "CreateDisasterRecoverGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建分散置放群组
    ///
    /// 本接口 (CreateDisasterRecoverGroup)用于创建[分散置放群组](https://cloud.tencent.com/document/product/213/15486)。创建好的置放群组，可在[创建实例](https://cloud.tencent.com/document/api/213/15730)时指定。
    @inlinable
    public func createDisasterRecoverGroup(name: String, type: String, clientToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDisasterRecoverGroupResponse> {
        self.createDisasterRecoverGroup(CreateDisasterRecoverGroupRequest(name: name, type: type, clientToken: clientToken), region: region, logger: logger, on: eventLoop)
    }

    /// 创建分散置放群组
    ///
    /// 本接口 (CreateDisasterRecoverGroup)用于创建[分散置放群组](https://cloud.tencent.com/document/product/213/15486)。创建好的置放群组，可在[创建实例](https://cloud.tencent.com/document/api/213/15730)时指定。
    @inlinable
    public func createDisasterRecoverGroup(name: String, type: String, clientToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDisasterRecoverGroupResponse {
        try await self.createDisasterRecoverGroup(CreateDisasterRecoverGroupRequest(name: name, type: type, clientToken: clientToken), region: region, logger: logger, on: eventLoop)
    }
}
