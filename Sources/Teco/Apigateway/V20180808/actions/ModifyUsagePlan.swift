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

extension Apigateway {
    /// ModifyUsagePlan请求参数结构体
    public struct ModifyUsagePlanRequest: TCRequestModel {
        /// 使用计划唯一 ID。
        public let usagePlanId: String

        /// 修改后的用户自定义的使用计划名称。
        public let usagePlanName: String?

        /// 修改后的用户自定义的使用计划描述。
        public let usagePlanDesc: String?

        /// 请求配额总数，取值范围为-1或者[1, 99999999]，默认为-1，表示不开启。
        public let maxRequestNum: Int64?

        /// 每秒请求限制数，取值范围为-1或者[1, 2000]，默认-1，表示不开启。
        public let maxRequestNumPreSec: Int64?

        public init(usagePlanId: String, usagePlanName: String? = nil, usagePlanDesc: String? = nil, maxRequestNum: Int64? = nil, maxRequestNumPreSec: Int64? = nil) {
            self.usagePlanId = usagePlanId
            self.usagePlanName = usagePlanName
            self.usagePlanDesc = usagePlanDesc
            self.maxRequestNum = maxRequestNum
            self.maxRequestNumPreSec = maxRequestNumPreSec
        }

        enum CodingKeys: String, CodingKey {
            case usagePlanId = "UsagePlanId"
            case usagePlanName = "UsagePlanName"
            case usagePlanDesc = "UsagePlanDesc"
            case maxRequestNum = "MaxRequestNum"
            case maxRequestNumPreSec = "MaxRequestNumPreSec"
        }
    }

    /// ModifyUsagePlan返回参数结构体
    public struct ModifyUsagePlanResponse: TCResponseModel {
        /// 使用计划详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: UsagePlanInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 修改使用计划
    ///
    /// 本接口（ModifyUsagePlan）用于修改使用计划的名称，描述及 QPS。
    @inlinable
    public func modifyUsagePlan(_ input: ModifyUsagePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUsagePlanResponse> {
        self.client.execute(action: "ModifyUsagePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改使用计划
    ///
    /// 本接口（ModifyUsagePlan）用于修改使用计划的名称，描述及 QPS。
    @inlinable
    public func modifyUsagePlan(_ input: ModifyUsagePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUsagePlanResponse {
        try await self.client.execute(action: "ModifyUsagePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改使用计划
    ///
    /// 本接口（ModifyUsagePlan）用于修改使用计划的名称，描述及 QPS。
    @inlinable
    public func modifyUsagePlan(usagePlanId: String, usagePlanName: String? = nil, usagePlanDesc: String? = nil, maxRequestNum: Int64? = nil, maxRequestNumPreSec: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUsagePlanResponse> {
        self.modifyUsagePlan(.init(usagePlanId: usagePlanId, usagePlanName: usagePlanName, usagePlanDesc: usagePlanDesc, maxRequestNum: maxRequestNum, maxRequestNumPreSec: maxRequestNumPreSec), region: region, logger: logger, on: eventLoop)
    }

    /// 修改使用计划
    ///
    /// 本接口（ModifyUsagePlan）用于修改使用计划的名称，描述及 QPS。
    @inlinable
    public func modifyUsagePlan(usagePlanId: String, usagePlanName: String? = nil, usagePlanDesc: String? = nil, maxRequestNum: Int64? = nil, maxRequestNumPreSec: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUsagePlanResponse {
        try await self.modifyUsagePlan(.init(usagePlanId: usagePlanId, usagePlanName: usagePlanName, usagePlanDesc: usagePlanDesc, maxRequestNum: maxRequestNum, maxRequestNumPreSec: maxRequestNumPreSec), region: region, logger: logger, on: eventLoop)
    }
}
