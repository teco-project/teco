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

extension Vod {
    /// CreateSampleSnapshotTemplate请求参数结构体
    public struct CreateSampleSnapshotTemplateRequest: TCRequestModel {
        /// 采样截图类型，取值：
        /// - Percent：按百分比。
        /// - Time：按时间间隔。
        public let sampleType: String

        /// 采样间隔。
        /// - 当 SampleType 为 Percent 时，指定采样间隔的百分比。
        /// - 当 SampleType 为 Time 时，指定采样间隔的时间，单位为秒。
        public let sampleInterval: UInt64

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 采样截图模板名称，长度限制：64 个字符。
        public let name: String?

        /// 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        /// - 当 Width、Height 均为 0，则分辨率同源；
        /// - 当 Width 为 0，Height 非 0，则 Width 按比例缩放；
        /// - 当 Width 非 0，Height 为 0，则 Height 按比例缩放；
        /// - 当 Width、Height 均非 0，则分辨率按用户指定。
        ///
        /// 默认值：0。
        public let width: UInt64?

        /// 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        /// - 当 Width、Height 均为 0，则分辨率同源；
        /// - 当 Width 为 0，Height 非 0，则 Width 按比例缩放；
        /// - 当 Width 非 0，Height 为 0，则 Height 按比例缩放；
        /// - 当 Width、Height 均非 0，则分辨率按用户指定。
        ///
        /// 默认值：0。
        public let height: UInt64?

        /// 分辨率自适应，可选值：
        /// - open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；
        /// - close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。
        ///
        /// 默认值：open。
        public let resolutionAdaptive: String?

        /// 图片格式，取值为 jpg 和 png。默认为 jpg。
        public let format: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        /// - stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；
        /// - black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。
        /// - white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。
        /// - gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。
        ///
        /// 默认值：black 。
        public let fillType: String?

        public init(sampleType: String, sampleInterval: UInt64, subAppId: UInt64? = nil, name: String? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, format: String? = nil, comment: String? = nil, fillType: String? = nil) {
            self.sampleType = sampleType
            self.sampleInterval = sampleInterval
            self.subAppId = subAppId
            self.name = name
            self.width = width
            self.height = height
            self.resolutionAdaptive = resolutionAdaptive
            self.format = format
            self.comment = comment
            self.fillType = fillType
        }

        enum CodingKeys: String, CodingKey {
            case sampleType = "SampleType"
            case sampleInterval = "SampleInterval"
            case subAppId = "SubAppId"
            case name = "Name"
            case width = "Width"
            case height = "Height"
            case resolutionAdaptive = "ResolutionAdaptive"
            case format = "Format"
            case comment = "Comment"
            case fillType = "FillType"
        }
    }

    /// CreateSampleSnapshotTemplate返回参数结构体
    public struct CreateSampleSnapshotTemplateResponse: TCResponseModel {
        /// 采样截图模板唯一标识。
        public let definition: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建采样截图模板
    ///
    /// 创建用户自定义采样截图模板，数量上限：16。
    @inlinable
    public func createSampleSnapshotTemplate(_ input: CreateSampleSnapshotTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSampleSnapshotTemplateResponse> {
        self.client.execute(action: "CreateSampleSnapshotTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建采样截图模板
    ///
    /// 创建用户自定义采样截图模板，数量上限：16。
    @inlinable
    public func createSampleSnapshotTemplate(_ input: CreateSampleSnapshotTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSampleSnapshotTemplateResponse {
        try await self.client.execute(action: "CreateSampleSnapshotTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建采样截图模板
    ///
    /// 创建用户自定义采样截图模板，数量上限：16。
    @inlinable
    public func createSampleSnapshotTemplate(sampleType: String, sampleInterval: UInt64, subAppId: UInt64? = nil, name: String? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, format: String? = nil, comment: String? = nil, fillType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSampleSnapshotTemplateResponse> {
        self.createSampleSnapshotTemplate(.init(sampleType: sampleType, sampleInterval: sampleInterval, subAppId: subAppId, name: name, width: width, height: height, resolutionAdaptive: resolutionAdaptive, format: format, comment: comment, fillType: fillType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建采样截图模板
    ///
    /// 创建用户自定义采样截图模板，数量上限：16。
    @inlinable
    public func createSampleSnapshotTemplate(sampleType: String, sampleInterval: UInt64, subAppId: UInt64? = nil, name: String? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, format: String? = nil, comment: String? = nil, fillType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSampleSnapshotTemplateResponse {
        try await self.createSampleSnapshotTemplate(.init(sampleType: sampleType, sampleInterval: sampleInterval, subAppId: subAppId, name: name, width: width, height: height, resolutionAdaptive: resolutionAdaptive, format: format, comment: comment, fillType: fillType), region: region, logger: logger, on: eventLoop)
    }
}
