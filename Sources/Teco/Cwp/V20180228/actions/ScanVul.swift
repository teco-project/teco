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

extension Cwp {
    /// ScanVul请求参数结构体
    public struct ScanVulRequest: TCRequest {
        /// 危害等级：1-低危；2-中危；3-高危；4-严重 (多选英文;分隔)
        public let vulLevels: String

        /// 服务器分类：1:专业版服务器；2:自选服务器
        public let hostType: UInt64

        /// 漏洞类型：1: web-cms漏洞 2:应用漏洞  4: Linux软件漏洞 5: Windows系统漏洞 (多选英文;分隔)
        public let vulCategories: String?

        /// 自选服务器时生效，主机quuid的string数组
        public let quuidList: [String]?

        /// 是否是应急漏洞 0 否 1 是
        public let vulEmergency: UInt64?

        /// 超时时长 单位秒 默认 3600 秒
        public let timeoutPeriod: UInt64?

        /// 需要扫描的漏洞id
        public let vulIds: [UInt64]?

        public init(vulLevels: String, hostType: UInt64, vulCategories: String? = nil, quuidList: [String]? = nil, vulEmergency: UInt64? = nil, timeoutPeriod: UInt64? = nil, vulIds: [UInt64]? = nil) {
            self.vulLevels = vulLevels
            self.hostType = hostType
            self.vulCategories = vulCategories
            self.quuidList = quuidList
            self.vulEmergency = vulEmergency
            self.timeoutPeriod = timeoutPeriod
            self.vulIds = vulIds
        }

        enum CodingKeys: String, CodingKey {
            case vulLevels = "VulLevels"
            case hostType = "HostType"
            case vulCategories = "VulCategories"
            case quuidList = "QuuidList"
            case vulEmergency = "VulEmergency"
            case timeoutPeriod = "TimeoutPeriod"
            case vulIds = "VulIds"
        }
    }

    /// ScanVul返回参数结构体
    public struct ScanVulResponse: TCResponse {
        /// 任务id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 一键检测
    @inlinable
    public func scanVul(_ input: ScanVulRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanVulResponse> {
        self.client.execute(action: "ScanVul", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 一键检测
    @inlinable
    public func scanVul(_ input: ScanVulRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanVulResponse {
        try await self.client.execute(action: "ScanVul", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 一键检测
    @inlinable
    public func scanVul(vulLevels: String, hostType: UInt64, vulCategories: String? = nil, quuidList: [String]? = nil, vulEmergency: UInt64? = nil, timeoutPeriod: UInt64? = nil, vulIds: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScanVulResponse> {
        self.scanVul(.init(vulLevels: vulLevels, hostType: hostType, vulCategories: vulCategories, quuidList: quuidList, vulEmergency: vulEmergency, timeoutPeriod: timeoutPeriod, vulIds: vulIds), region: region, logger: logger, on: eventLoop)
    }

    /// 一键检测
    @inlinable
    public func scanVul(vulLevels: String, hostType: UInt64, vulCategories: String? = nil, quuidList: [String]? = nil, vulEmergency: UInt64? = nil, timeoutPeriod: UInt64? = nil, vulIds: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScanVulResponse {
        try await self.scanVul(.init(vulLevels: vulLevels, hostType: hostType, vulCategories: vulCategories, quuidList: quuidList, vulEmergency: vulEmergency, timeoutPeriod: timeoutPeriod, vulIds: vulIds), region: region, logger: logger, on: eventLoop)
    }
}
