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

import TecoCore

extension Live {
    /// ModifyPullStreamConfig请求参数结构体
    public struct ModifyPullStreamConfigRequest: TCRequestModel {
        /// 配置 ID。
        /// 获取来源：
        /// 1. 创建拉流配置接口CreatePullStreamConfig返回的配置 ID。
        /// 2. 通过查询接口DescribePullStreamConfigs获取配置 ID。
        public let configId: String

        /// 源 URL，用于拉流的地址。目前可支持直播流及点播文件。
        /// 注意：
        /// 1. 多个点播 URL 之间使用空格拼接。
        /// 2. 目前上限支持10个 URL。
        /// 3. 支持拉流文件格式：FLV，RTMP，HLS，MP4。
        /// 4. 使用标准三层样式，如：http://test.com/live/stream.flv。
        public let fromUrl: String?

        /// 目的 URL，用于推流的地址，目前限制该目标地址为腾讯域名。
        /// 1. 仅支持 RTMP 协议。
        /// 2. 使用标准三层样式，如：http://test.com/live/stream.flv。
        public let toUrl: String?

        /// 区域 ID：
        /// 1-深圳。
        /// 2-上海。
        /// 3-天津。
        /// 4-中国香港。
        /// 如有改动，需同时传入IspId。
        public let areaId: Int64?

        /// 运营商 ID，
        /// 1：电信。
        /// 2：移动。
        /// 3：联通。
        /// 4：其他。
        /// AreaId为4的时候，IspId只能为其他。如有改动，需同时传入AreaId。
        public let ispId: Int64?

        /// 开始时间。
        /// 使用UTC格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let startTime: String?

        /// 结束时间，注意：
        /// 1. 结束时间必须大于开始时间；
        /// 2. 结束时间和开始时间必须大于当前时间；
        /// 3. 结束时间 和 开始时间 间隔必须小于七天。
        ///
        /// 使用UTC格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let endTime: String?

        public init(configId: String, fromUrl: String? = nil, toUrl: String? = nil, areaId: Int64? = nil, ispId: Int64? = nil, startTime: String? = nil, endTime: String? = nil) {
            self.configId = configId
            self.fromUrl = fromUrl
            self.toUrl = toUrl
            self.areaId = areaId
            self.ispId = ispId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case fromUrl = "FromUrl"
            case toUrl = "ToUrl"
            case areaId = "AreaId"
            case ispId = "IspId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// ModifyPullStreamConfig返回参数结构体
    public struct ModifyPullStreamConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新拉流配置(该接口已下线,请使用新接口 ModifyLivePullStreamTask)
    ///
    /// 更新拉流配置。该接口为已下线接口，请使用新接口 ModifyLivePullStreamTask。
    @inlinable @discardableResult
    public func modifyPullStreamConfig(_ input: ModifyPullStreamConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPullStreamConfigResponse> {
        self.client.execute(action: "ModifyPullStreamConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新拉流配置(该接口已下线,请使用新接口 ModifyLivePullStreamTask)
    ///
    /// 更新拉流配置。该接口为已下线接口，请使用新接口 ModifyLivePullStreamTask。
    @inlinable @discardableResult
    public func modifyPullStreamConfig(_ input: ModifyPullStreamConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPullStreamConfigResponse {
        try await self.client.execute(action: "ModifyPullStreamConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新拉流配置(该接口已下线,请使用新接口 ModifyLivePullStreamTask)
    ///
    /// 更新拉流配置。该接口为已下线接口，请使用新接口 ModifyLivePullStreamTask。
    @inlinable @discardableResult
    public func modifyPullStreamConfig(configId: String, fromUrl: String? = nil, toUrl: String? = nil, areaId: Int64? = nil, ispId: Int64? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPullStreamConfigResponse> {
        self.modifyPullStreamConfig(.init(configId: configId, fromUrl: fromUrl, toUrl: toUrl, areaId: areaId, ispId: ispId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 更新拉流配置(该接口已下线,请使用新接口 ModifyLivePullStreamTask)
    ///
    /// 更新拉流配置。该接口为已下线接口，请使用新接口 ModifyLivePullStreamTask。
    @inlinable @discardableResult
    public func modifyPullStreamConfig(configId: String, fromUrl: String? = nil, toUrl: String? = nil, areaId: Int64? = nil, ispId: Int64? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPullStreamConfigResponse {
        try await self.modifyPullStreamConfig(.init(configId: configId, fromUrl: fromUrl, toUrl: toUrl, areaId: areaId, ispId: ispId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
