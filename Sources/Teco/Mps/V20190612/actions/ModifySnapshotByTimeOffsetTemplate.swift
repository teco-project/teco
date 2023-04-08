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

extension Mps {
    /// ModifySnapshotByTimeOffsetTemplate请求参数结构体
    public struct ModifySnapshotByTimeOffsetTemplateRequest: TCRequestModel {
        /// 指定时间点截图模板唯一标识。
        public let definition: UInt64

        /// 指定时间点截图模板名称，长度限制：64 个字符。
        public let name: String?

        /// 截图宽度（或长边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        /// <li>当 Width、Height 均为 0，则分辨率同源；</li>
        /// <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        /// <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        /// <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        /// 默认值：0。
        public let width: UInt64?

        /// 截图高度（或短边）的最大值，取值范围：0 和 [128, 4096]，单位：px。
        /// <li>当 Width、Height 均为 0，则分辨率同源；</li>
        /// <li>当 Width 为 0，Height 非 0，则 Width 按比例缩放；</li>
        /// <li>当 Width 非 0，Height 为 0，则 Height 按比例缩放；</li>
        /// <li>当 Width、Height 均非 0，则分辨率按用户指定。</li>
        /// 默认值：0。
        public let height: UInt64?

        /// 分辨率自适应，可选值：
        /// <li>open：开启，此时，Width 代表视频的长边，Height 表示视频的短边；</li>
        /// <li>close：关闭，此时，Width 代表视频的宽度，Height 表示视频的高度。</li>
        /// 默认值：open。
        public let resolutionAdaptive: String?

        /// 图片格式，取值可以为 jpg、png、webp。
        public let format: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 填充方式，当视频流配置宽高参数与原始视频的宽高比不一致时，对转码的处理方式，即为“填充”。可选填充方式：
        /// <li> stretch：拉伸，对每一帧进行拉伸，填满整个画面，可能导致转码后的视频被“压扁“或者“拉长“；</li>
        /// <li>black：留黑，保持视频宽高比不变，边缘剩余部分使用黑色填充。</li>
        /// <li>white：留白，保持视频宽高比不变，边缘剩余部分使用白色填充。</li>
        /// <li>gauss：高斯模糊，保持视频宽高比不变，边缘剩余部分使用高斯模糊。</li>
        /// 默认值：black 。
        public let fillType: String?

        public init(definition: UInt64, name: String? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, format: String? = nil, comment: String? = nil, fillType: String? = nil) {
            self.definition = definition
            self.name = name
            self.width = width
            self.height = height
            self.resolutionAdaptive = resolutionAdaptive
            self.format = format
            self.comment = comment
            self.fillType = fillType
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case name = "Name"
            case width = "Width"
            case height = "Height"
            case resolutionAdaptive = "ResolutionAdaptive"
            case format = "Format"
            case comment = "Comment"
            case fillType = "FillType"
        }
    }

    /// ModifySnapshotByTimeOffsetTemplate返回参数结构体
    public struct ModifySnapshotByTimeOffsetTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改指定时间点截图模板
    ///
    /// 修改用户自定义指定时间点截图模板。
    @inlinable @discardableResult
    public func modifySnapshotByTimeOffsetTemplate(_ input: ModifySnapshotByTimeOffsetTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySnapshotByTimeOffsetTemplateResponse> {
        self.client.execute(action: "ModifySnapshotByTimeOffsetTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改指定时间点截图模板
    ///
    /// 修改用户自定义指定时间点截图模板。
    @inlinable @discardableResult
    public func modifySnapshotByTimeOffsetTemplate(_ input: ModifySnapshotByTimeOffsetTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySnapshotByTimeOffsetTemplateResponse {
        try await self.client.execute(action: "ModifySnapshotByTimeOffsetTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改指定时间点截图模板
    ///
    /// 修改用户自定义指定时间点截图模板。
    @inlinable @discardableResult
    public func modifySnapshotByTimeOffsetTemplate(definition: UInt64, name: String? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, format: String? = nil, comment: String? = nil, fillType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySnapshotByTimeOffsetTemplateResponse> {
        self.modifySnapshotByTimeOffsetTemplate(.init(definition: definition, name: name, width: width, height: height, resolutionAdaptive: resolutionAdaptive, format: format, comment: comment, fillType: fillType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改指定时间点截图模板
    ///
    /// 修改用户自定义指定时间点截图模板。
    @inlinable @discardableResult
    public func modifySnapshotByTimeOffsetTemplate(definition: UInt64, name: String? = nil, width: UInt64? = nil, height: UInt64? = nil, resolutionAdaptive: String? = nil, format: String? = nil, comment: String? = nil, fillType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySnapshotByTimeOffsetTemplateResponse {
        try await self.modifySnapshotByTimeOffsetTemplate(.init(definition: definition, name: name, width: width, height: height, resolutionAdaptive: resolutionAdaptive, format: format, comment: comment, fillType: fillType), region: region, logger: logger, on: eventLoop)
    }
}
