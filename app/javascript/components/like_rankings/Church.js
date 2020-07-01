import React from "react"
import PropTypes from "prop-types"

class Church extends React.Component {
  render () {
    const url = this.props.url
    let urlPath;
    if (url) {
      urlPath = <p><a target="_blank" href={url}>ホームページはこちら</a></p>
    }

    return (
      <React.Fragment>
        <h4 className="text-center">{this.props.likesCount}いいね</h4>
        <div className="church-ranking-info">
          <div className="panel panel-info">
            <div className="panel-heading">
              <h3 className="panel-title">{this.props.name}</h3>
            </div>
            <div className="panel-body">
              <p>{this.props.groupName}</p>
              <p>{this.props.address}</p>
              <p><a href={this.props.churchPath}>詳細はこちら</a></p>
              {urlPath}
            </div>
          </div>
        </div>
    </React.Fragment>
    );
  }
}

Church.propTypes = {
  likesCount: PropTypes.number.isRequired,
  name: PropTypes.string.isRequired,
  groupName: PropTypes.string.isRequired,
  address: PropTypes.string.isRequired,
  churchPath: PropTypes.string.isRequired,
  url: PropTypes.oneOfType([PropTypes.oneOf([null]), PropTypes.string]),
};

export default Church
