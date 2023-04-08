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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Teo {
    /// DescribeZoneDetails请求参数结构体
    public struct DescribeZoneDetailsRequest: TCRequestModel {
        /// 站点 ID
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeZoneDetails返回参数结构体
    public struct DescribeZoneDetailsResponse: TCResponseModel {
        /// 站点 ID
        public let id: String

        /// 站点名称
        public let name: String

        /// 用户当前使用的 NS 列表
        public let originalNameServers: [String]

        /// 腾讯云分配给用户的 NS 列表
        public let nameServers: [String]

        /// 站点状态
        /// - active：NS 已切换
        /// - pending：NS 未切换
        /// - moved：NS 已切走
        /// - deactivated：被封禁
        public let status: String

        /// 站点接入方式
        /// - full：NS 接入
        /// - partial：CNAME 接入
        public let type: String

        /// 站点是否关闭
        public let paused: Bool

        /// 是否开启 CNAME 加速
        /// - enabled：开启
        /// - disabled：关闭
        public let cnameSpeedUp: String

        /// cname切换验证状态
        /// - finished 切换完成
        /// - pending 切换验证中
        public let cnameStatus: String

        /// 资源标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        /// 站点接入地域，取值为：
        /// <li> global：全球；</li>
        /// <li> mainland：中国大陆；</li>
        /// <li> overseas：境外区域。</li>
        public let area: String

        /// 计费资源
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resources: [Resource]?

        /// 站点修改时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modifiedOn: Date

        /// 站点创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdOn: Date

        /// 用户自定义 NS 信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vanityNameServers: VanityNameServers?

        /// 用户自定义 NS IP 信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vanityNameServersIps: [VanityNameServersIps]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case originalNameServers = "OriginalNameServers"
            case nameServers = "NameServers"
            case status = "Status"
            case type = "Type"
            case paused = "Paused"
            case cnameSpeedUp = "CnameSpeedUp"
            case cnameStatus = "CnameStatus"
            case tags = "Tags"
            case area = "Area"
            case resources = "Resources"
            case modifiedOn = "ModifiedOn"
            case createdOn = "CreatedOn"
            case vanityNameServers = "VanityNameServers"
            case vanityNameServersIps = "VanityNameServersIps"
            case requestId = "RequestId"
        }
    }

    /// 查询某个站点的详细信息
    ///
    /// 根据站点 ID 查询站点的详细信息
    @inlinable
    public func describeZoneDetails(_ input: DescribeZoneDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZoneDetailsResponse> {
        self.client.execute(action: "DescribeZoneDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某个站点的详细信息
    ///
    /// 根据站点 ID 查询站点的详细信息
    @inlinable
    public func describeZoneDetails(_ input: DescribeZoneDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneDetailsResponse {
        try await self.client.execute(action: "DescribeZoneDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某个站点的详细信息
    ///
    /// 根据站点 ID 查询站点的详细信息
    @inlinable
    public func describeZoneDetails(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZoneDetailsResponse> {
        self.describeZoneDetails(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某个站点的详细信息
    ///
    /// 根据站点 ID 查询站点的详细信息
    @inlinable
    public func describeZoneDetails(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZoneDetailsResponse {
        try await self.describeZoneDetails(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
